; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_elf_print_phdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_elf_print_phdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfdump = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i64, i64, i64, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"elf_getphnum failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"elf_getphdr failed: %s\00", align 1
@SOLARIS_FMT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"\0AProgram Header[%zu]:\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"    p_vaddr:      %#-14jx\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"  p_flags:    [ %s ]\0A\00", align 1
@p_flags = common dso_local global i64* null, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"    p_paddr:      %#-14jx\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"  p_type:     [ %s ]\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"    p_filesz:     %#-14jx\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"  p_memsz:    %#jx\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"    p_offset:     %#-14jx\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"  p_align:    %#jx\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"\0Aprogram header:\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"entry: %zu\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"\09p_type: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"\09p_offset: %ju\0A\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"\09p_vaddr: %#jx\0A\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"\09p_paddr: %#jx\0A\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"\09p_filesz: %ju\0A\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"\09p_memsz: %ju\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"\09p_flags: %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"\09p_align: %ju\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfdump*)* @elf_print_phdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elf_print_phdr(%struct.elfdump* %0) #0 {
  %2 = alloca %struct.elfdump*, align 8
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.elfdump* %0, %struct.elfdump** %2, align 8
  %7 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %8 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @elf_getphnum(i32 %9, i64* %4)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = call i32 @elf_errmsg(i32 -1)
  %14 = call i32 @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %126

15:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  store i64 0, i64* %5, align 8
  br label %16

16:                                               ; preds = %123, %15
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %126

20:                                               ; preds = %16
  %21 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %22 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %5, align 8
  %25 = call %struct.TYPE_4__* @gelf_getphdr(i32 %23, i64 %24, %struct.TYPE_4__* %3)
  %26 = icmp ne %struct.TYPE_4__* %25, %3
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = call i32 @elf_errmsg(i32 -1)
  %29 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %123

30:                                               ; preds = %20
  %31 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %32 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %31, i32 0, i32 1
  %33 = call i32 @STAILQ_EMPTY(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %30
  %36 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 7
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @elf_phdr_type_str(i32 %38)
  %40 = call i32* @find_name(%struct.elfdump* %36, i64 %39)
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %123

43:                                               ; preds = %35, %30
  %44 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %45 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SOLARIS_FMT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %83

50:                                               ; preds = %43
  %51 = load i64, i64* %5, align 8
  %52 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %51)
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %54)
  %56 = load i64*, i64** @p_flags, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, 7
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %56, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i64 %62)
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 %65)
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 7
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @elf_phdr_type_str(i32 %68)
  %70 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i64 %69)
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i64 %72)
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i64 %75)
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 6
  %78 = load i64, i64* %77, align 8
  %79 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i64 %78)
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i64 %81)
  br label %122

83:                                               ; preds = %43
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %83
  %87 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %88

88:                                               ; preds = %86, %83
  %89 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %90 = load i64, i64* %5, align 8
  %91 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i64 %90)
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 7
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @elf_phdr_type_str(i32 %93)
  %95 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i64 %94)
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 6
  %97 = load i64, i64* %96, align 8
  %98 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i64 %97)
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i64 %100)
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i64 %103)
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i64 %106)
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i64 %109)
  %111 = load i64*, i64** @p_flags, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = and i32 %113, 7
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %111, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i64 %117)
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i64 %120)
  br label %122

122:                                              ; preds = %88, %50
  br label %123

123:                                              ; preds = %122, %42, %27
  %124 = load i64, i64* %5, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %5, align 8
  br label %16

126:                                              ; preds = %12, %16
  ret void
}

declare dso_local i64 @elf_getphnum(i32, i64*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local %struct.TYPE_4__* @gelf_getphdr(i32, i64, %struct.TYPE_4__*) #1

declare dso_local i32 @STAILQ_EMPTY(i32*) #1

declare dso_local i32* @find_name(%struct.elfdump*, i64) #1

declare dso_local i64 @elf_phdr_type_str(i32) #1

declare dso_local i32 @PRT(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
