; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c_guard_bh_eod.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c_guard_bh_eod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.buffer_head = type { i32, i64 }

@RW_MASK = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.bio*, %struct.buffer_head*)* @guard_bh_eod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @guard_bh_eod(i32 %0, %struct.bio* %1, %struct.buffer_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.bio* %1, %struct.bio** %5, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %6, align 8
  %10 = load %struct.bio*, %struct.bio** %5, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 3
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @i_size_read(i32 %14)
  %16 = ashr i32 %15, 9
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %92

20:                                               ; preds = %3
  %21 = load %struct.bio*, %struct.bio** %5, align 8
  %22 = getelementptr inbounds %struct.bio, %struct.bio* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = icmp uge i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %92

30:                                               ; preds = %20
  %31 = load %struct.bio*, %struct.bio** %5, align 8
  %32 = getelementptr inbounds %struct.bio, %struct.bio* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sub i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load %struct.bio*, %struct.bio** %5, align 8
  %37 = getelementptr inbounds %struct.bio, %struct.bio* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = lshr i32 %39, 9
  %41 = load i32, i32* %7, align 4
  %42 = icmp ule i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i64 @likely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %30
  br label %92

47:                                               ; preds = %30
  %48 = load i32, i32* %7, align 4
  %49 = shl i32 %48, 9
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.bio*, %struct.bio** %5, align 8
  %52 = getelementptr inbounds %struct.bio, %struct.bio* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.bio*, %struct.bio** %5, align 8
  %55 = getelementptr inbounds %struct.bio, %struct.bio* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 %53, i32* %58, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @RW_MASK, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @READ, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %92

64:                                               ; preds = %47
  %65 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %66 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @KM_USER0, align 4
  %69 = call i8* @kmap_atomic(i32 %67, i32 %68)
  store i8* %69, i8** %9, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %72 = call i32 @bh_offset(%struct.buffer_head* %71)
  %73 = sext i32 %72 to i64
  %74 = getelementptr i8, i8* %70, i64 %73
  %75 = load i32, i32* %8, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr i8, i8* %74, i64 %76
  %78 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %79 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = zext i32 %81 to i64
  %83 = sub nsw i64 %80, %82
  %84 = call i32 @memset(i8* %77, i32 0, i64 %83)
  %85 = load i8*, i8** %9, align 8
  %86 = load i32, i32* @KM_USER0, align 4
  %87 = call i32 @kunmap_atomic(i8* %85, i32 %86)
  %88 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %89 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @flush_dcache_page(i32 %90)
  br label %92

92:                                               ; preds = %19, %29, %46, %64, %47
  ret void
}

declare dso_local i32 @i_size_read(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i8* @kmap_atomic(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @bh_offset(%struct.buffer_head*) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @flush_dcache_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
