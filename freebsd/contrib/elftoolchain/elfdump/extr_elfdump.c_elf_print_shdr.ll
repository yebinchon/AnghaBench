; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_elf_print_shdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_elf_print_shdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfdump = type { i32, i64, %struct.TYPE_2__, %struct.section*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.section = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i32 }

@SOLARIS_FMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"\0Asection header:\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"\0ASection Header[%zu]:\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"  sh_name: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"    sh_addr:      %#-14jx\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"  sh_flags:   [ %s ]\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"  sh_flags:   0\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"    sh_size:      %#-14jx\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"  sh_type:    [ %s ]\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"    sh_offset:    %#-14jx\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"  sh_entsize: %#jx\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"    sh_link:      %-14u\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"  sh_info:    %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"    sh_addralign: %#jx\0A\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"entry: %ju\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"\09sh_name: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"\09sh_type: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"\09sh_flags: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"\09sh_addr: %#jx\0A\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"\09sh_offset: %ju\0A\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"\09sh_size: %ju\0A\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"\09sh_link: %u\0A\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"\09sh_info: %u\0A\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"\09sh_addralign: %ju\0A\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"\09sh_entsize: %ju\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfdump*)* @elf_print_shdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elf_print_shdr(%struct.elfdump* %0) #0 {
  %2 = alloca %struct.elfdump*, align 8
  %3 = alloca %struct.section*, align 8
  %4 = alloca i64, align 8
  store %struct.elfdump* %0, %struct.elfdump** %2, align 8
  %5 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %6 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %5, i32 0, i32 4
  %7 = call i32 @STAILQ_EMPTY(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %153

10:                                               ; preds = %1
  %11 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %12 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @SOLARIS_FMT, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %10
  store i64 0, i64* %4, align 8
  br label %20

20:                                               ; preds = %150, %19
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %23 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %153

26:                                               ; preds = %20
  %27 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %28 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %27, i32 0, i32 3
  %29 = load %struct.section*, %struct.section** %28, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds %struct.section, %struct.section* %29, i64 %30
  store %struct.section* %31, %struct.section** %3, align 8
  %32 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %33 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SOLARIS_FMT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %99

38:                                               ; preds = %26
  %39 = load i64, i64* %4, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %150

42:                                               ; preds = %38
  %43 = load i64, i64* %4, align 8
  %44 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %43)
  %45 = load %struct.section*, %struct.section** %3, align 8
  %46 = getelementptr inbounds %struct.section, %struct.section* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i64 %47)
  %49 = load %struct.section*, %struct.section** %3, align 8
  %50 = getelementptr inbounds %struct.section, %struct.section* %49, i32 0, i32 8
  %51 = load i64, i64* %50, align 8
  %52 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %51)
  %53 = load %struct.section*, %struct.section** %3, align 8
  %54 = getelementptr inbounds %struct.section, %struct.section* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %42
  %58 = load %struct.section*, %struct.section** %3, align 8
  %59 = getelementptr inbounds %struct.section, %struct.section* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @sh_flags(i64 %60)
  %62 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i64 %61)
  br label %65

63:                                               ; preds = %42
  %64 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %57
  %66 = load %struct.section*, %struct.section** %3, align 8
  %67 = getelementptr inbounds %struct.section, %struct.section* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i64 %68)
  %70 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %71 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.section*, %struct.section** %3, align 8
  %75 = getelementptr inbounds %struct.section, %struct.section* %74, i32 0, i32 9
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @sh_types(i32 %73, i32 %76)
  %78 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i64 %77)
  %79 = load %struct.section*, %struct.section** %3, align 8
  %80 = getelementptr inbounds %struct.section, %struct.section* %79, i32 0, i32 7
  %81 = load i64, i64* %80, align 8
  %82 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i64 %81)
  %83 = load %struct.section*, %struct.section** %3, align 8
  %84 = getelementptr inbounds %struct.section, %struct.section* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i64 %85)
  %87 = load %struct.section*, %struct.section** %3, align 8
  %88 = getelementptr inbounds %struct.section, %struct.section* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i64 %89)
  %91 = load %struct.section*, %struct.section** %3, align 8
  %92 = getelementptr inbounds %struct.section, %struct.section* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i64 %93)
  %95 = load %struct.section*, %struct.section** %3, align 8
  %96 = getelementptr inbounds %struct.section, %struct.section* %95, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i64 %97)
  br label %149

99:                                               ; preds = %26
  %100 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %101 = load i64, i64* %4, align 8
  %102 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i64 %101)
  %103 = load %struct.section*, %struct.section** %3, align 8
  %104 = getelementptr inbounds %struct.section, %struct.section* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i64 %105)
  %107 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %108 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.section*, %struct.section** %3, align 8
  %112 = getelementptr inbounds %struct.section, %struct.section* %111, i32 0, i32 9
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @sh_types(i32 %110, i32 %113)
  %115 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i64 %114)
  %116 = load %struct.section*, %struct.section** %3, align 8
  %117 = getelementptr inbounds %struct.section, %struct.section* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = call i64 @sh_flags(i64 %118)
  %120 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i64 %119)
  %121 = load %struct.section*, %struct.section** %3, align 8
  %122 = getelementptr inbounds %struct.section, %struct.section* %121, i32 0, i32 8
  %123 = load i64, i64* %122, align 8
  %124 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i64 %123)
  %125 = load %struct.section*, %struct.section** %3, align 8
  %126 = getelementptr inbounds %struct.section, %struct.section* %125, i32 0, i32 7
  %127 = load i64, i64* %126, align 8
  %128 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i64 %127)
  %129 = load %struct.section*, %struct.section** %3, align 8
  %130 = getelementptr inbounds %struct.section, %struct.section* %129, i32 0, i32 6
  %131 = load i64, i64* %130, align 8
  %132 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i64 %131)
  %133 = load %struct.section*, %struct.section** %3, align 8
  %134 = getelementptr inbounds %struct.section, %struct.section* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i64 %135)
  %137 = load %struct.section*, %struct.section** %3, align 8
  %138 = getelementptr inbounds %struct.section, %struct.section* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i64 %139)
  %141 = load %struct.section*, %struct.section** %3, align 8
  %142 = getelementptr inbounds %struct.section, %struct.section* %141, i32 0, i32 5
  %143 = load i64, i64* %142, align 8
  %144 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i64 %143)
  %145 = load %struct.section*, %struct.section** %3, align 8
  %146 = getelementptr inbounds %struct.section, %struct.section* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0), i64 %147)
  br label %149

149:                                              ; preds = %99, %65
  br label %150

150:                                              ; preds = %149, %41
  %151 = load i64, i64* %4, align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* %4, align 8
  br label %20

153:                                              ; preds = %9, %20
  ret void
}

declare dso_local i32 @STAILQ_EMPTY(i32*) #1

declare dso_local i32 @PRT(i8*, ...) #1

declare dso_local i64 @sh_flags(i64) #1

declare dso_local i64 @sh_types(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
