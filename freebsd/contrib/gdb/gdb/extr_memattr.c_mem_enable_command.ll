; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_memattr.c_mem_enable_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_memattr.c_mem_enable_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_region = type { i32, %struct.mem_region* }

@target_dcache = common dso_local global i32 0, align 4
@mem_region_chain = common dso_local global %struct.mem_region* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"Arguments must be memory region numbers.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @mem_enable_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mem_enable_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mem_region*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %5, align 8
  %10 = load i32, i32* @target_dcache, align 4
  %11 = call i32 @dcache_invalidate(i32 %10)
  %12 = load i8*, i8** %5, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load %struct.mem_region*, %struct.mem_region** @mem_region_chain, align 8
  store %struct.mem_region* %15, %struct.mem_region** %8, align 8
  br label %16

16:                                               ; preds = %22, %14
  %17 = load %struct.mem_region*, %struct.mem_region** %8, align 8
  %18 = icmp ne %struct.mem_region* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load %struct.mem_region*, %struct.mem_region** %8, align 8
  %21 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  br label %22

22:                                               ; preds = %19
  %23 = load %struct.mem_region*, %struct.mem_region** %8, align 8
  %24 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %23, i32 0, i32 1
  %25 = load %struct.mem_region*, %struct.mem_region** %24, align 8
  store %struct.mem_region* %25, %struct.mem_region** %8, align 8
  br label %16

26:                                               ; preds = %16
  br label %89

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %87, %27
  %29 = load i8*, i8** %5, align 8
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %32, label %88

32:                                               ; preds = %28
  %33 = load i8*, i8** %5, align 8
  store i8* %33, i8** %6, align 8
  br label %34

34:                                               ; preds = %46, %32
  %35 = load i8*, i8** %6, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp sge i32 %37, 48
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp sle i32 %42, 57
  br label %44

44:                                               ; preds = %39, %34
  %45 = phi i1 [ false, %34 ], [ %43, %39 ]
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %6, align 8
  br label %34

49:                                               ; preds = %44
  %50 = load i8*, i8** %6, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %49
  %55 = load i8*, i8** %6, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 32
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load i8*, i8** %6, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 9
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %59, %54, %49
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 @atoi(i8* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @mem_enable(i32 %69)
  %71 = load i8*, i8** %6, align 8
  store i8* %71, i8** %5, align 8
  br label %72

72:                                               ; preds = %84, %66
  %73 = load i8*, i8** %5, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 32
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = load i8*, i8** %5, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 9
  br label %82

82:                                               ; preds = %77, %72
  %83 = phi i1 [ true, %72 ], [ %81, %77 ]
  br i1 %83, label %84, label %87

84:                                               ; preds = %82
  %85 = load i8*, i8** %5, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %5, align 8
  br label %72

87:                                               ; preds = %82
  br label %28

88:                                               ; preds = %28
  br label %89

89:                                               ; preds = %88, %26
  ret void
}

declare dso_local i32 @dcache_invalidate(i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @mem_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
