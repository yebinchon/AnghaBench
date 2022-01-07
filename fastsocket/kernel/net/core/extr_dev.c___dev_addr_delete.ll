; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c___dev_addr_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c___dev_addr_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_addr_list = type { i32, i32, %struct.dev_addr_list*, i64, i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__dev_addr_delete(%struct.dev_addr_list** %0, i32* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dev_addr_list**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dev_addr_list*, align 8
  %13 = alloca i32, align 4
  store %struct.dev_addr_list** %0, %struct.dev_addr_list*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  br label %14

14:                                               ; preds = %65, %5
  %15 = load %struct.dev_addr_list**, %struct.dev_addr_list*** %7, align 8
  %16 = load %struct.dev_addr_list*, %struct.dev_addr_list** %15, align 8
  store %struct.dev_addr_list* %16, %struct.dev_addr_list** %12, align 8
  %17 = icmp ne %struct.dev_addr_list* %16, null
  br i1 %17, label %18, label %68

18:                                               ; preds = %14
  %19 = load %struct.dev_addr_list*, %struct.dev_addr_list** %12, align 8
  %20 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load %struct.dev_addr_list*, %struct.dev_addr_list** %12, align 8
  %24 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @memcmp(i32 %21, i8* %22, i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %64

28:                                               ; preds = %18
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.dev_addr_list*, %struct.dev_addr_list** %12, align 8
  %31 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %64

34:                                               ; preds = %28
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load %struct.dev_addr_list*, %struct.dev_addr_list** %12, align 8
  %39 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %13, align 4
  %41 = load %struct.dev_addr_list*, %struct.dev_addr_list** %12, align 8
  %42 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %68

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %34
  %48 = load %struct.dev_addr_list*, %struct.dev_addr_list** %12, align 8
  %49 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, -1
  store i64 %51, i64* %49, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 0, i32* %6, align 4
  br label %71

54:                                               ; preds = %47
  %55 = load %struct.dev_addr_list*, %struct.dev_addr_list** %12, align 8
  %56 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %55, i32 0, i32 2
  %57 = load %struct.dev_addr_list*, %struct.dev_addr_list** %56, align 8
  %58 = load %struct.dev_addr_list**, %struct.dev_addr_list*** %7, align 8
  store %struct.dev_addr_list* %57, %struct.dev_addr_list** %58, align 8
  %59 = load %struct.dev_addr_list*, %struct.dev_addr_list** %12, align 8
  %60 = call i32 @kfree(%struct.dev_addr_list* %59)
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %61, align 4
  store i32 0, i32* %6, align 4
  br label %71

64:                                               ; preds = %28, %18
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.dev_addr_list*, %struct.dev_addr_list** %12, align 8
  %67 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %66, i32 0, i32 2
  store %struct.dev_addr_list** %67, %struct.dev_addr_list*** %7, align 8
  br label %14

68:                                               ; preds = %45, %14
  %69 = load i32, i32* @ENOENT, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %68, %54, %53
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.dev_addr_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
