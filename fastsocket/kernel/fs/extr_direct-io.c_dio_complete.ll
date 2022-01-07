; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_direct-io.c_dio_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_direct-io.c_dio_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dio = type { i64, i64, i64, i64, i64, i32, %struct.TYPE_2__*, i32, i32, i32 (i32, i64, i64, i32, i64, i32)* }
%struct.TYPE_2__ = type { i32 }

@EIOCBQUEUED = common dso_local global i64 0, align 8
@READ = common dso_local global i64 0, align 8
@DIO_LOCKING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dio*, i64, i64, i32)* @dio_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dio_complete(%struct.dio* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.dio*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.dio* %0, %struct.dio** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* @EIOCBQUEUED, align 8
  %12 = sub nsw i64 0, %11
  %13 = icmp eq i64 %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %14, %4
  %16 = load %struct.dio*, %struct.dio** %5, align 8
  %17 = getelementptr inbounds %struct.dio, %struct.dio* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %15
  %21 = load %struct.dio*, %struct.dio** %5, align 8
  %22 = getelementptr inbounds %struct.dio, %struct.dio* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  %24 = load %struct.dio*, %struct.dio** %5, align 8
  %25 = getelementptr inbounds %struct.dio, %struct.dio* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @READ, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %20
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %9, align 8
  %32 = add nsw i64 %30, %31
  %33 = load %struct.dio*, %struct.dio** %5, align 8
  %34 = getelementptr inbounds %struct.dio, %struct.dio* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %32, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load %struct.dio*, %struct.dio** %5, align 8
  %39 = getelementptr inbounds %struct.dio, %struct.dio* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = sub nsw i64 %40, %41
  store i64 %42, i64* %9, align 8
  br label %43

43:                                               ; preds = %37, %29, %20
  br label %44

44:                                               ; preds = %43, %15
  %45 = load i64, i64* %7, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load %struct.dio*, %struct.dio** %5, align 8
  %49 = getelementptr inbounds %struct.dio, %struct.dio* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %7, align 8
  br label %51

51:                                               ; preds = %47, %44
  %52 = load i64, i64* %7, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load %struct.dio*, %struct.dio** %5, align 8
  %56 = getelementptr inbounds %struct.dio, %struct.dio* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %7, align 8
  br label %58

58:                                               ; preds = %54, %51
  %59 = load i64, i64* %7, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i64, i64* %9, align 8
  store i64 %62, i64* %7, align 8
  br label %63

63:                                               ; preds = %61, %58
  %64 = load %struct.dio*, %struct.dio** %5, align 8
  %65 = getelementptr inbounds %struct.dio, %struct.dio* %64, i32 0, i32 9
  %66 = load i32 (i32, i64, i64, i32, i64, i32)*, i32 (i32, i64, i64, i32, i64, i32)** %65, align 8
  %67 = icmp ne i32 (i32, i64, i64, i32, i64, i32)* %66, null
  br i1 %67, label %68, label %88

68:                                               ; preds = %63
  %69 = load %struct.dio*, %struct.dio** %5, align 8
  %70 = getelementptr inbounds %struct.dio, %struct.dio* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %68
  %74 = load %struct.dio*, %struct.dio** %5, align 8
  %75 = getelementptr inbounds %struct.dio, %struct.dio* %74, i32 0, i32 9
  %76 = load i32 (i32, i64, i64, i32, i64, i32)*, i32 (i32, i64, i64, i32, i64, i32)** %75, align 8
  %77 = load %struct.dio*, %struct.dio** %5, align 8
  %78 = getelementptr inbounds %struct.dio, %struct.dio* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 8
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* %9, align 8
  %82 = load %struct.dio*, %struct.dio** %5, align 8
  %83 = getelementptr inbounds %struct.dio, %struct.dio* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 4
  %85 = load i64, i64* %7, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 %76(i32 %79, i64 %80, i64 %81, i32 %84, i64 %85, i32 %86)
  br label %98

88:                                               ; preds = %68, %63
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load %struct.dio*, %struct.dio** %5, align 8
  %93 = getelementptr inbounds %struct.dio, %struct.dio* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 8
  %95 = load i64, i64* %7, align 8
  %96 = call i32 @aio_complete(i32 %94, i64 %95, i32 0)
  br label %97

97:                                               ; preds = %91, %88
  br label %98

98:                                               ; preds = %97, %73
  %99 = load %struct.dio*, %struct.dio** %5, align 8
  %100 = getelementptr inbounds %struct.dio, %struct.dio* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @DIO_LOCKING, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %98
  %106 = load %struct.dio*, %struct.dio** %5, align 8
  %107 = getelementptr inbounds %struct.dio, %struct.dio* %106, i32 0, i32 6
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = call i32 @up_read_non_owner(i32* %109)
  br label %111

111:                                              ; preds = %105, %98
  %112 = load i64, i64* %7, align 8
  ret i64 %112
}

declare dso_local i32 @aio_complete(i32, i64, i32) #1

declare dso_local i32 @up_read_non_owner(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
