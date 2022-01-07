; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio-integrity.c_bio_integrity_split.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio-integrity.c_bio_integrity_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.bio_integrity_payload*, i32 }
%struct.bio_integrity_payload = type { i32, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.bio_pair = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, i64, i64, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i64, i64, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.TYPE_10__* }
%struct.TYPE_6__ = type { %struct.TYPE_9__* }
%struct.blk_integrity = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bio_integrity_split(%struct.bio* %0, %struct.bio_pair* %1, i32 %2) #0 {
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.bio_pair*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.blk_integrity*, align 8
  %8 = alloca %struct.bio_integrity_payload*, align 8
  %9 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %4, align 8
  store %struct.bio_pair* %1, %struct.bio_pair** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.bio*, %struct.bio** %4, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 0
  %12 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %11, align 8
  store %struct.bio_integrity_payload* %12, %struct.bio_integrity_payload** %8, align 8
  %13 = load %struct.bio*, %struct.bio** %4, align 8
  %14 = call i64 @bio_integrity(%struct.bio* %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %138

17:                                               ; preds = %3
  %18 = load %struct.bio*, %struct.bio** %4, align 8
  %19 = getelementptr inbounds %struct.bio, %struct.bio* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.blk_integrity* @bdev_get_integrity(i32 %20)
  store %struct.blk_integrity* %21, %struct.blk_integrity** %7, align 8
  %22 = load %struct.blk_integrity*, %struct.blk_integrity** %7, align 8
  %23 = icmp eq %struct.blk_integrity* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %8, align 8
  %27 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 1
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load %struct.blk_integrity*, %struct.blk_integrity** %7, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @bio_integrity_hw_sectors(%struct.blk_integrity* %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load %struct.bio_pair*, %struct.bio_pair** %5, align 8
  %36 = getelementptr inbounds %struct.bio_pair, %struct.bio_pair* %35, i32 0, i32 1
  %37 = load %struct.bio_pair*, %struct.bio_pair** %5, align 8
  %38 = getelementptr inbounds %struct.bio_pair, %struct.bio_pair* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %39, align 8
  %40 = load %struct.bio_pair*, %struct.bio_pair** %5, align 8
  %41 = getelementptr inbounds %struct.bio_pair, %struct.bio_pair* %40, i32 0, i32 0
  %42 = load %struct.bio_pair*, %struct.bio_pair** %5, align 8
  %43 = getelementptr inbounds %struct.bio_pair, %struct.bio_pair* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %44, align 8
  %45 = load %struct.bio_pair*, %struct.bio_pair** %5, align 8
  %46 = getelementptr inbounds %struct.bio_pair, %struct.bio_pair* %45, i32 0, i32 3
  %47 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %8, align 8
  %48 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %47, i32 0, i32 2
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 0
  %51 = bitcast %struct.TYPE_8__* %46 to i8*
  %52 = bitcast %struct.TYPE_8__* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 4 %52, i64 8, i1 false)
  %53 = load %struct.bio_pair*, %struct.bio_pair** %5, align 8
  %54 = getelementptr inbounds %struct.bio_pair, %struct.bio_pair* %53, i32 0, i32 2
  %55 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %8, align 8
  %56 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %55, i32 0, i32 2
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i64 0
  %59 = bitcast %struct.TYPE_8__* %54 to i8*
  %60 = bitcast %struct.TYPE_8__* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 4 %60, i64 8, i1 false)
  %61 = load %struct.bio_pair*, %struct.bio_pair** %5, align 8
  %62 = getelementptr inbounds %struct.bio_pair, %struct.bio_pair* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 0
  %66 = load %struct.bio_pair*, %struct.bio_pair** %5, align 8
  %67 = getelementptr inbounds %struct.bio_pair, %struct.bio_pair* %66, i32 0, i32 3
  %68 = bitcast %struct.TYPE_8__* %65 to i8*
  %69 = bitcast %struct.TYPE_8__* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %68, i8* align 8 %69, i64 8, i1 false)
  %70 = load %struct.bio_pair*, %struct.bio_pair** %5, align 8
  %71 = getelementptr inbounds %struct.bio_pair, %struct.bio_pair* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 3
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i64 0
  %75 = load %struct.bio_pair*, %struct.bio_pair** %5, align 8
  %76 = getelementptr inbounds %struct.bio_pair, %struct.bio_pair* %75, i32 0, i32 2
  %77 = bitcast %struct.TYPE_8__* %74 to i8*
  %78 = bitcast %struct.TYPE_8__* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %77, i8* align 8 %78, i64 8, i1 false)
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.blk_integrity*, %struct.blk_integrity** %7, align 8
  %81 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %79, %82
  %84 = load %struct.bio_pair*, %struct.bio_pair** %5, align 8
  %85 = getelementptr inbounds %struct.bio_pair, %struct.bio_pair* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.blk_integrity*, %struct.blk_integrity** %7, align 8
  %89 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %87, %90
  %92 = load %struct.bio_pair*, %struct.bio_pair** %5, align 8
  %93 = getelementptr inbounds %struct.bio_pair, %struct.bio_pair* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, %91
  store i32 %96, i32* %94, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.blk_integrity*, %struct.blk_integrity** %7, align 8
  %99 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 %97, %100
  %102 = load %struct.bio_pair*, %struct.bio_pair** %5, align 8
  %103 = getelementptr inbounds %struct.bio_pair, %struct.bio_pair* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sub nsw i32 %105, %101
  store i32 %106, i32* %104, align 8
  %107 = load %struct.bio*, %struct.bio** %4, align 8
  %108 = getelementptr inbounds %struct.bio, %struct.bio* %107, i32 0, i32 0
  %109 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %108, align 8
  %110 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.bio_pair*, %struct.bio_pair** %5, align 8
  %113 = getelementptr inbounds %struct.bio_pair, %struct.bio_pair* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 2
  store i64 %111, i64* %114, align 8
  %115 = load %struct.bio*, %struct.bio** %4, align 8
  %116 = getelementptr inbounds %struct.bio, %struct.bio* %115, i32 0, i32 0
  %117 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %116, align 8
  %118 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = zext i32 %120 to i64
  %122 = add nsw i64 %119, %121
  %123 = load %struct.bio_pair*, %struct.bio_pair** %5, align 8
  %124 = getelementptr inbounds %struct.bio_pair, %struct.bio_pair* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 2
  store i64 %122, i64* %125, align 8
  %126 = load %struct.bio_pair*, %struct.bio_pair** %5, align 8
  %127 = getelementptr inbounds %struct.bio_pair, %struct.bio_pair* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  store i32 1, i32* %128, align 8
  %129 = load %struct.bio_pair*, %struct.bio_pair** %5, align 8
  %130 = getelementptr inbounds %struct.bio_pair, %struct.bio_pair* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  store i32 1, i32* %131, align 8
  %132 = load %struct.bio_pair*, %struct.bio_pair** %5, align 8
  %133 = getelementptr inbounds %struct.bio_pair, %struct.bio_pair* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  store i64 0, i64* %134, align 8
  %135 = load %struct.bio_pair*, %struct.bio_pair** %5, align 8
  %136 = getelementptr inbounds %struct.bio_pair, %struct.bio_pair* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 1
  store i64 0, i64* %137, align 8
  br label %138

138:                                              ; preds = %17, %16
  ret void
}

declare dso_local i64 @bio_integrity(%struct.bio*) #1

declare dso_local %struct.blk_integrity* @bdev_get_integrity(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @bio_integrity_hw_sectors(%struct.blk_integrity*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
