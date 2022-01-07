; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_elf_print_interp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_elf_print_interp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfdump = type { i32, i32 }
%struct.TYPE_4__ = type { i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"PT_INTERP\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"elf_rawfile failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"elf_getphnum failed: %s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"elf_getphdr failed: %s\00", align 1
@PT_INTERP = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"invalid phdr offset\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"\0Ainterp:\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfdump*)* @elf_print_interp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elf_print_interp(%struct.elfdump* %0) #0 {
  %2 = alloca %struct.elfdump*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.elfdump* %0, %struct.elfdump** %2, align 8
  %8 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %9 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %8, i32 0, i32 1
  %10 = call i32 @STAILQ_EMPTY(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %14 = call i32* @find_name(%struct.elfdump* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %73

17:                                               ; preds = %12, %1
  %18 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %19 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @elf_rawfile(i32 %20, i64* %5)
  store i8* %21, i8** %3, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = call i32 @elf_errmsg(i32 -1)
  %25 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %73

26:                                               ; preds = %17
  %27 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %28 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @elf_getphnum(i32 %29, i64* %7)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = call i32 @elf_errmsg(i32 -1)
  %34 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  br label %73

35:                                               ; preds = %26
  store i64 0, i64* %6, align 8
  br label %36

36:                                               ; preds = %70, %35
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %73

40:                                               ; preds = %36
  %41 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %42 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %6, align 8
  %45 = call %struct.TYPE_4__* @gelf_getphdr(i32 %43, i64 %44, %struct.TYPE_4__* %4)
  %46 = icmp ne %struct.TYPE_4__* %45, %4
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = call i32 @elf_errmsg(i32 -1)
  %49 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  br label %70

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PT_INTERP, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %5, align 8
  %59 = icmp uge i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %70

62:                                               ; preds = %55
  %63 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %64 = load i8*, i8** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %62, %50
  br label %70

70:                                               ; preds = %69, %60, %47
  %71 = load i64, i64* %6, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %6, align 8
  br label %36

73:                                               ; preds = %16, %23, %32, %36
  ret void
}

declare dso_local i32 @STAILQ_EMPTY(i32*) #1

declare dso_local i32* @find_name(%struct.elfdump*, i8*) #1

declare dso_local i8* @elf_rawfile(i32, i64*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @elf_getphnum(i32, i64*) #1

declare dso_local %struct.TYPE_4__* @gelf_getphdr(i32, i64, %struct.TYPE_4__*) #1

declare dso_local i32 @PRT(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
