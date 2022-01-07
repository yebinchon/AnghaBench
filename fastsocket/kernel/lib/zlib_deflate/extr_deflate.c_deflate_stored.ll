; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/zlib_deflate/extr_deflate.c_deflate_stored.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/zlib_deflate/extr_deflate.c_deflate_stored.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"slide too late\00", align 1
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@need_more = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"block gone\00", align 1
@Z_FINISH = common dso_local global i32 0, align 4
@finish_done = common dso_local global i32 0, align 4
@block_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @deflate_stored to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deflate_stored(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 65535, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sub nsw i32 %11, 5
  %13 = icmp sgt i32 %8, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %17, 5
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %14, %2
  br label %20

20:                                               ; preds = %132, %19
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp sle i32 %23, 1
  br i1 %24, label %25, label %67

25:                                               ; preds = %20
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = call i64 @MAX_DIST(%struct.TYPE_6__* %32)
  %34 = add nsw i64 %31, %33
  %35 = icmp slt i64 %28, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %25
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %39, %42
  br label %44

44:                                               ; preds = %36, %25
  %45 = phi i1 [ true, %25 ], [ %43, %36 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @Assert(i32 %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = call i32 @fill_window(%struct.TYPE_6__* %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %44
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @Z_NO_FLUSH, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @need_more, align 4
  store i32 %59, i32* %3, align 4
  br label %149

60:                                               ; preds = %54, %44
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %133

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66, %20
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp sge i64 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i32 @Assert(i32 %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, %77
  store i64 %81, i64* %79, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  store i32 0, i32* %83, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %86, %88
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %7, align 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %67
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  %100 = load i32, i32* %7, align 4
  %101 = icmp sge i32 %99, %100
  br i1 %101, label %102, label %118

102:                                              ; preds = %95, %67
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = sub nsw i64 %105, %107
  %109 = trunc i64 %108 to i32
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  store i64 %113, i64* %115, align 8
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %117 = call i32 @FLUSH_BLOCK(%struct.TYPE_6__* %116, i32 0)
  br label %118

118:                                              ; preds = %102, %95
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = sub nsw i64 %121, %124
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %127 = call i64 @MAX_DIST(%struct.TYPE_6__* %126)
  %128 = icmp sge i64 %125, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %118
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %131 = call i32 @FLUSH_BLOCK(%struct.TYPE_6__* %130, i32 0)
  br label %132

132:                                              ; preds = %129, %118
  br label %20

133:                                              ; preds = %65
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* @Z_FINISH, align 4
  %137 = icmp eq i32 %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @FLUSH_BLOCK(%struct.TYPE_6__* %134, i32 %138)
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* @Z_FINISH, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %133
  %144 = load i32, i32* @finish_done, align 4
  br label %147

145:                                              ; preds = %133
  %146 = load i32, i32* @block_done, align 4
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi i32 [ %144, %143 ], [ %146, %145 ]
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %147, %58
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32 @Assert(i32, i8*) #1

declare dso_local i64 @MAX_DIST(%struct.TYPE_6__*) #1

declare dso_local i32 @fill_window(%struct.TYPE_6__*) #1

declare dso_local i32 @FLUSH_BLOCK(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
