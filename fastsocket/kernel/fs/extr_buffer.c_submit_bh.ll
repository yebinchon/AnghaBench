; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c_submit_bh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c_submit_bh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32, i32, i32, i32, i32 }
%struct.bio = type { i32, i32, i32, %struct.buffer_head*, i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@WRITE = common dso_local global i32 0, align 4
@WRITE_BARRIER = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@end_bio_bh_io_sync = common dso_local global i32 0, align 4
@BIO_EOPNOTSUPP = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @submit_bh(i32 %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %8 = call i32 @buffer_locked(%struct.buffer_head* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %14 = call i32 @buffer_mapped(%struct.buffer_head* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %20 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %27 = call i32 @buffer_delay(%struct.buffer_head* %26)
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %30 = call i32 @buffer_unwritten(%struct.buffer_head* %29)
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %33 = call i64 @buffer_ordered(%struct.buffer_head* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %2
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @WRITE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @WRITE_BARRIER, align 4
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %35, %2
  %45 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %46 = call i64 @test_set_buffer_req(%struct.buffer_head* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @WRITE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %55 = call i32 @clear_buffer_write_io_error(%struct.buffer_head* %54)
  br label %56

56:                                               ; preds = %53, %48, %44
  %57 = load i32, i32* @GFP_NOIO, align 4
  %58 = call %struct.bio* @bio_alloc(i32 %57, i32 1)
  store %struct.bio* %58, %struct.bio** %5, align 8
  %59 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %60 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %63 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = ashr i32 %64, 9
  %66 = mul nsw i32 %61, %65
  %67 = load %struct.bio*, %struct.bio** %5, align 8
  %68 = getelementptr inbounds %struct.bio, %struct.bio* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %70 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.bio*, %struct.bio** %5, align 8
  %73 = getelementptr inbounds %struct.bio, %struct.bio* %72, i32 0, i32 7
  store i32 %71, i32* %73, align 8
  %74 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %75 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.bio*, %struct.bio** %5, align 8
  %78 = getelementptr inbounds %struct.bio, %struct.bio* %77, i32 0, i32 6
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  store i32 %76, i32* %81, align 4
  %82 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %83 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.bio*, %struct.bio** %5, align 8
  %86 = getelementptr inbounds %struct.bio, %struct.bio* %85, i32 0, i32 6
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i32 %84, i32* %89, align 4
  %90 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %91 = call i32 @bh_offset(%struct.buffer_head* %90)
  %92 = load %struct.bio*, %struct.bio** %5, align 8
  %93 = getelementptr inbounds %struct.bio, %struct.bio* %92, i32 0, i32 6
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  store i32 %91, i32* %96, align 4
  %97 = load %struct.bio*, %struct.bio** %5, align 8
  %98 = getelementptr inbounds %struct.bio, %struct.bio* %97, i32 0, i32 1
  store i32 1, i32* %98, align 4
  %99 = load %struct.bio*, %struct.bio** %5, align 8
  %100 = getelementptr inbounds %struct.bio, %struct.bio* %99, i32 0, i32 5
  store i64 0, i64* %100, align 8
  %101 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %102 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.bio*, %struct.bio** %5, align 8
  %105 = getelementptr inbounds %struct.bio, %struct.bio* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* @end_bio_bh_io_sync, align 4
  %107 = load %struct.bio*, %struct.bio** %5, align 8
  %108 = getelementptr inbounds %struct.bio, %struct.bio* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 8
  %109 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %110 = load %struct.bio*, %struct.bio** %5, align 8
  %111 = getelementptr inbounds %struct.bio, %struct.bio* %110, i32 0, i32 3
  store %struct.buffer_head* %109, %struct.buffer_head** %111, align 8
  %112 = load i32, i32* %3, align 4
  %113 = load %struct.bio*, %struct.bio** %5, align 8
  %114 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %115 = call i32 @guard_bh_eod(i32 %112, %struct.bio* %113, %struct.buffer_head* %114)
  %116 = load %struct.bio*, %struct.bio** %5, align 8
  %117 = call i32 @bio_get(%struct.bio* %116)
  %118 = load i32, i32* %3, align 4
  %119 = load %struct.bio*, %struct.bio** %5, align 8
  %120 = call i32 @submit_bio(i32 %118, %struct.bio* %119)
  %121 = load %struct.bio*, %struct.bio** %5, align 8
  %122 = load i32, i32* @BIO_EOPNOTSUPP, align 4
  %123 = call i64 @bio_flagged(%struct.bio* %121, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %56
  %126 = load i32, i32* @EOPNOTSUPP, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %125, %56
  %129 = load %struct.bio*, %struct.bio** %5, align 8
  %130 = call i32 @bio_put(%struct.bio* %129)
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @buffer_locked(%struct.buffer_head*) #1

declare dso_local i32 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @buffer_delay(%struct.buffer_head*) #1

declare dso_local i32 @buffer_unwritten(%struct.buffer_head*) #1

declare dso_local i64 @buffer_ordered(%struct.buffer_head*) #1

declare dso_local i64 @test_set_buffer_req(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_write_io_error(%struct.buffer_head*) #1

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local i32 @bh_offset(%struct.buffer_head*) #1

declare dso_local i32 @guard_bh_eod(i32, %struct.bio*, %struct.buffer_head*) #1

declare dso_local i32 @bio_get(%struct.bio*) #1

declare dso_local i32 @submit_bio(i32, %struct.bio*) #1

declare dso_local i64 @bio_flagged(%struct.bio*, i32) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
