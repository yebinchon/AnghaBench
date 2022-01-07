; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_proc.c_atm_proc_dev_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_proc.c_atm_proc_dev_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_dev = type { i32, i8*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@atm_proc_root = common dso_local global i32 0, align 4
@proc_atm_dev_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atm_proc_dev_register(%struct.atm_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atm_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.atm_dev* %0, %struct.atm_dev** %3, align 8
  %7 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %8 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %7, i32 0, i32 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %85

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %4, align 4
  %17 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %18 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %26, %14
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = sdiv i32 %27, 10
  store i32 %28, i32* %5, align 4
  br label %20

29:                                               ; preds = %20
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %37 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @strlen(i8* %38)
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = add nsw i64 %42, 2
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i32 @kmalloc(i64 %43, i32 %44)
  %46 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %47 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %49 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %35
  br label %83

53:                                               ; preds = %35
  %54 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %55 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %58 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %61 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @sprintf(i32 %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %59, i32 %62)
  %64 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %65 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @atm_proc_root, align 4
  %68 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %69 = call i32 @proc_create_data(i32 %66, i32 0, i32 %67, i32* @proc_atm_dev_ops, %struct.atm_dev* %68)
  %70 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %71 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %73 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %53
  br label %78

77:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %85

78:                                               ; preds = %76
  %79 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %80 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @kfree(i32 %81)
  br label %83

83:                                               ; preds = %78, %52
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %83, %77, %13
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @kmalloc(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @proc_create_data(i32, i32, i32, i32*, %struct.atm_dev*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
