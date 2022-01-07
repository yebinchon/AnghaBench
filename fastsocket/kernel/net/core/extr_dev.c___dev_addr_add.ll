; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c___dev_addr_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c___dev_addr_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_addr_list = type { i32, i32, i32, %struct.dev_addr_list*, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__dev_addr_add(%struct.dev_addr_list** %0, i32* %1, i8* %2, i32 %3, i32 %4) #0 {
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
  %14 = load %struct.dev_addr_list**, %struct.dev_addr_list*** %7, align 8
  %15 = load %struct.dev_addr_list*, %struct.dev_addr_list** %14, align 8
  store %struct.dev_addr_list* %15, %struct.dev_addr_list** %12, align 8
  br label %16

16:                                               ; preds = %54, %5
  %17 = load %struct.dev_addr_list*, %struct.dev_addr_list** %12, align 8
  %18 = icmp ne %struct.dev_addr_list* %17, null
  br i1 %18, label %19, label %58

19:                                               ; preds = %16
  %20 = load %struct.dev_addr_list*, %struct.dev_addr_list** %12, align 8
  %21 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load %struct.dev_addr_list*, %struct.dev_addr_list** %12, align 8
  %25 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @memcmp(i32 %22, i8* %23, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %19
  %30 = load %struct.dev_addr_list*, %struct.dev_addr_list** %12, align 8
  %31 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %29
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = load %struct.dev_addr_list*, %struct.dev_addr_list** %12, align 8
  %40 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %13, align 4
  %42 = load %struct.dev_addr_list*, %struct.dev_addr_list** %12, align 8
  %43 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %93

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %35
  %49 = load %struct.dev_addr_list*, %struct.dev_addr_list** %12, align 8
  %50 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  store i32 0, i32* %6, align 4
  br label %93

53:                                               ; preds = %29, %19
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.dev_addr_list*, %struct.dev_addr_list** %12, align 8
  %56 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %55, i32 0, i32 3
  %57 = load %struct.dev_addr_list*, %struct.dev_addr_list** %56, align 8
  store %struct.dev_addr_list* %57, %struct.dev_addr_list** %12, align 8
  br label %16

58:                                               ; preds = %16
  %59 = load i32, i32* @GFP_ATOMIC, align 4
  %60 = call %struct.dev_addr_list* @kzalloc(i32 32, i32 %59)
  store %struct.dev_addr_list* %60, %struct.dev_addr_list** %12, align 8
  %61 = load %struct.dev_addr_list*, %struct.dev_addr_list** %12, align 8
  %62 = icmp eq %struct.dev_addr_list* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %93

66:                                               ; preds = %58
  %67 = load %struct.dev_addr_list*, %struct.dev_addr_list** %12, align 8
  %68 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @memcpy(i32 %69, i8* %70, i32 %71)
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.dev_addr_list*, %struct.dev_addr_list** %12, align 8
  %75 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.dev_addr_list*, %struct.dev_addr_list** %12, align 8
  %77 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %76, i32 0, i32 2
  store i32 1, i32* %77, align 8
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 1, i32 0
  %82 = load %struct.dev_addr_list*, %struct.dev_addr_list** %12, align 8
  %83 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.dev_addr_list**, %struct.dev_addr_list*** %7, align 8
  %85 = load %struct.dev_addr_list*, %struct.dev_addr_list** %84, align 8
  %86 = load %struct.dev_addr_list*, %struct.dev_addr_list** %12, align 8
  %87 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %86, i32 0, i32 3
  store %struct.dev_addr_list* %85, %struct.dev_addr_list** %87, align 8
  %88 = load %struct.dev_addr_list*, %struct.dev_addr_list** %12, align 8
  %89 = load %struct.dev_addr_list**, %struct.dev_addr_list*** %7, align 8
  store %struct.dev_addr_list* %88, %struct.dev_addr_list** %89, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %66, %63, %48, %46
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local %struct.dev_addr_list* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
