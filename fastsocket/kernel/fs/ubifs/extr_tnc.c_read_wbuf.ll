; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_read_wbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_read_wbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_wbuf = type { i32, i32, i32, i32, %struct.ubifs_info* }
%struct.ubifs_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"LEB %d:%d, length %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_wbuf*, i8*, i32, i32, i32)* @read_wbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_wbuf(%struct.ubifs_wbuf* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubifs_wbuf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ubifs_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ubifs_wbuf* %0, %struct.ubifs_wbuf** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %7, align 8
  %16 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %15, i32 0, i32 4
  %17 = load %struct.ubifs_info*, %struct.ubifs_info** %16, align 8
  store %struct.ubifs_info* %17, %struct.ubifs_info** %12, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @dbg_io(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i32 %20)
  %22 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %7, align 8
  %23 = icmp ne %struct.ubifs_wbuf* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %5
  %25 = load i32, i32* %10, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.ubifs_info*, %struct.ubifs_info** %12, align 8
  %30 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* %11, align 4
  %35 = icmp sge i32 %34, 0
  br label %36

36:                                               ; preds = %33, %27, %24, %5
  %37 = phi i1 [ false, %27 ], [ false, %24 ], [ false, %5 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @ubifs_assert(i32 %38)
  %40 = load i32, i32* %11, align 4
  %41 = and i32 %40, 7
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.ubifs_info*, %struct.ubifs_info** %12, align 8
  %46 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %44, %47
  br label %49

49:                                               ; preds = %43, %36
  %50 = phi i1 [ false, %36 ], [ %48, %43 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @ubifs_assert(i32 %51)
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %53, %54
  %56 = load %struct.ubifs_info*, %struct.ubifs_info** %12, align 8
  %57 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp sle i32 %55, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @ubifs_assert(i32 %60)
  %62 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %7, align 8
  %63 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %62, i32 0, i32 3
  %64 = call i32 @spin_lock(i32* %63)
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %7, align 8
  %67 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %65, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %49
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %71, %72
  %74 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %7, align 8
  %75 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp sgt i32 %73, %76
  br label %78

78:                                               ; preds = %70, %49
  %79 = phi i1 [ false, %49 ], [ %77, %70 ]
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %95, label %83

83:                                               ; preds = %78
  %84 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %7, align 8
  %85 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %84, i32 0, i32 3
  %86 = call i32 @spin_unlock(i32* %85)
  %87 = load %struct.ubifs_info*, %struct.ubifs_info** %12, align 8
  %88 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i8*, i8** %8, align 8
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @ubi_read(i32 %89, i32 %90, i8* %91, i32 %92, i32 %93)
  store i32 %94, i32* %6, align 4
  br label %139

95:                                               ; preds = %78
  %96 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %7, align 8
  %97 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %11, align 4
  %100 = sub nsw i32 %98, %99
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %13, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  store i32 0, i32* %13, align 4
  br label %104

104:                                              ; preds = %103, %95
  %105 = load i8*, i8** %8, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr i8, i8* %105, i64 %107
  %109 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %7, align 8
  %110 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %111, %112
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %113, %114
  %116 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %7, align 8
  %117 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sub nsw i32 %115, %118
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %13, align 4
  %122 = sub nsw i32 %120, %121
  %123 = call i32 @memcpy(i8* %108, i32 %119, i32 %122)
  %124 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %7, align 8
  %125 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %124, i32 0, i32 3
  %126 = call i32 @spin_unlock(i32* %125)
  %127 = load i32, i32* %13, align 4
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %104
  %130 = load %struct.ubifs_info*, %struct.ubifs_info** %12, align 8
  %131 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %10, align 4
  %134 = load i8*, i8** %8, align 8
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %13, align 4
  %137 = call i32 @ubi_read(i32 %132, i32 %133, i8* %134, i32 %135, i32 %136)
  store i32 %137, i32* %6, align 4
  br label %139

138:                                              ; preds = %104
  store i32 0, i32* %6, align 4
  br label %139

139:                                              ; preds = %138, %129, %83
  %140 = load i32, i32* %6, align 4
  ret i32 %140
}

declare dso_local i32 @dbg_io(i8*, i32, i32, i32) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ubi_read(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
