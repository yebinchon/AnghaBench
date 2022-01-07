; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_insert_zbranch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_insert_zbranch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_znode = type { i32, i32, %struct.ubifs_zbranch*, i64 }
%struct.ubifs_zbranch = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubifs_znode*, %struct.ubifs_zbranch*, i32)* @insert_zbranch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_zbranch(%struct.ubifs_znode* %0, %struct.ubifs_zbranch* %1, i32 %2) #0 {
  %4 = alloca %struct.ubifs_znode*, align 8
  %5 = alloca %struct.ubifs_zbranch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ubifs_znode* %0, %struct.ubifs_znode** %4, align 8
  store %struct.ubifs_zbranch* %1, %struct.ubifs_zbranch** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %9 = call i32 @ubifs_zn_dirty(%struct.ubifs_znode* %8)
  %10 = call i32 @ubifs_assert(i32 %9)
  %11 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %12 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %75

15:                                               ; preds = %3
  %16 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %17 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %60, %15
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %63

23:                                               ; preds = %19
  %24 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %25 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %24, i32 0, i32 2
  %26 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %26, i64 %28
  %30 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %31 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %30, i32 0, i32 2
  %32 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %32, i64 %35
  %37 = bitcast %struct.ubifs_zbranch* %29 to i8*
  %38 = bitcast %struct.ubifs_zbranch* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 8, i1 false)
  %39 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %40 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %39, i32 0, i32 2
  %41 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %41, i64 %43
  %45 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = icmp ne %struct.TYPE_2__* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %23
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %51 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %50, i32 0, i32 2
  %52 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %52, i64 %54
  %56 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %49, i32* %58, align 4
  br label %59

59:                                               ; preds = %48, %23
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %7, align 4
  br label %19

63:                                               ; preds = %19
  %64 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %5, align 8
  %65 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = icmp ne %struct.TYPE_2__* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %5, align 8
  %71 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 4
  br label %74

74:                                               ; preds = %68, %63
  br label %103

75:                                               ; preds = %3
  %76 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %77 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %99, %75
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %102

83:                                               ; preds = %79
  %84 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %85 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %84, i32 0, i32 2
  %86 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %86, i64 %88
  %90 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %91 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %90, i32 0, i32 2
  %92 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %92, i64 %95
  %97 = bitcast %struct.ubifs_zbranch* %89 to i8*
  %98 = bitcast %struct.ubifs_zbranch* %96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %97, i8* align 8 %98, i64 8, i1 false)
  br label %99

99:                                               ; preds = %83
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %7, align 4
  br label %79

102:                                              ; preds = %79
  br label %103

103:                                              ; preds = %102, %74
  %104 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %105 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %104, i32 0, i32 2
  %106 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %106, i64 %108
  %110 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %5, align 8
  %111 = bitcast %struct.ubifs_zbranch* %109 to i8*
  %112 = bitcast %struct.ubifs_zbranch* %110 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %111, i8* align 8 %112, i64 8, i1 false)
  %113 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %114 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 8
  %117 = load i32, i32* %6, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %103
  %120 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %121 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %120, i32 0, i32 1
  store i32 1, i32* %121, align 4
  br label %122

122:                                              ; preds = %119, %103
  ret void
}

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @ubifs_zn_dirty(%struct.ubifs_znode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
