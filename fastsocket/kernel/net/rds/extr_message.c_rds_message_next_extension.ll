; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_message.c_rds_message_next_extension.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_message.c_rds_message_next_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_header = type { i32* }

@RDS_HEADER_EXT_SPACE = common dso_local global i32 0, align 4
@RDS_EXTHDR_NONE = common dso_local global i32 0, align 4
@__RDS_EXTHDR_MAX = common dso_local global i32 0, align 4
@rds_exthdr_size = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rds_message_next_extension(%struct.rds_header* %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rds_header*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.rds_header* %0, %struct.rds_header** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.rds_header*, %struct.rds_header** %6, align 8
  %15 = getelementptr inbounds %struct.rds_header, %struct.rds_header* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %13, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @RDS_HEADER_EXT_SPACE, align 4
  %21 = icmp uge i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %72

23:                                               ; preds = %4
  %24 = load i32*, i32** %13, align 8
  %25 = load i32, i32* %10, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %10, align 4
  %27 = zext i32 %25 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @RDS_EXTHDR_NONE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %23
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @__RDS_EXTHDR_MAX, align 4
  %36 = icmp uge i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %23
  br label %72

38:                                               ; preds = %33
  %39 = load i32*, i32** @rds_exthdr_size, align 8
  %40 = load i32, i32* %11, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %12, align 4
  %46 = add i32 %44, %45
  %47 = load i32, i32* @RDS_HEADER_EXT_SPACE, align 4
  %48 = icmp ugt i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %72

50:                                               ; preds = %38
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %12, align 4
  %53 = add i32 %51, %52
  %54 = load i32*, i32** %7, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp ult i32 %55, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load i32, i32* %12, align 4
  %61 = load i32*, i32** %9, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %50
  %63 = load i8*, i8** %8, align 8
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* %10, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @memcpy(i8* %63, i32* %67, i32 %69)
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %5, align 4
  br label %77

72:                                               ; preds = %49, %37, %22
  %73 = load i32, i32* @RDS_HEADER_EXT_SPACE, align 4
  %74 = load i32*, i32** %7, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32*, i32** %9, align 8
  store i32 0, i32* %75, align 4
  %76 = load i32, i32* @RDS_EXTHDR_NONE, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %72, %62
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
