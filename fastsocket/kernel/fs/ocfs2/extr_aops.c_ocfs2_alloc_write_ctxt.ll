; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_aops.c_ocfs2_alloc_write_ctxt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_aops.c_ocfs2_alloc_write_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_write_ctxt = type { i32, i32, i32, i32, %struct.buffer_head*, i32 }
%struct.ocfs2_super = type { i32 }
%struct.buffer_head = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_write_ctxt**, %struct.ocfs2_super*, i32, i32, %struct.buffer_head*)* @ocfs2_alloc_write_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_alloc_write_ctxt(%struct.ocfs2_write_ctxt** %0, %struct.ocfs2_super* %1, i32 %2, i32 %3, %struct.buffer_head* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_write_ctxt**, align 8
  %8 = alloca %struct.ocfs2_super*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ocfs2_write_ctxt*, align 8
  store %struct.ocfs2_write_ctxt** %0, %struct.ocfs2_write_ctxt*** %7, align 8
  store %struct.ocfs2_super* %1, %struct.ocfs2_super** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.buffer_head* %4, %struct.buffer_head** %11, align 8
  %14 = load i32, i32* @GFP_NOFS, align 4
  %15 = call %struct.ocfs2_write_ctxt* @kzalloc(i32 32, i32 %14)
  store %struct.ocfs2_write_ctxt* %15, %struct.ocfs2_write_ctxt** %13, align 8
  %16 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %13, align 8
  %17 = icmp ne %struct.ocfs2_write_ctxt* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %73

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %24 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = lshr i32 %22, %25
  %27 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %13, align 8
  %28 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @UINT_MAX, align 4
  %30 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %13, align 8
  %31 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = add i32 %32, %33
  %35 = sub i32 %34, 1
  %36 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %37 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = lshr i32 %35, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %13, align 8
  %42 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub i32 %40, %43
  %45 = add i32 %44, 1
  %46 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %13, align 8
  %47 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %49 = call i32 @get_bh(%struct.buffer_head* %48)
  %50 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %51 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %13, align 8
  %52 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %51, i32 0, i32 4
  store %struct.buffer_head* %50, %struct.buffer_head** %52, align 8
  %53 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %54 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %55 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ugt i32 %53, %56
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %21
  %62 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %13, align 8
  %63 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %62, i32 0, i32 2
  store i32 1, i32* %63, align 8
  br label %67

64:                                               ; preds = %21
  %65 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %13, align 8
  %66 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %65, i32 0, i32 2
  store i32 0, i32* %66, align 8
  br label %67

67:                                               ; preds = %64, %61
  %68 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %13, align 8
  %69 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %68, i32 0, i32 3
  %70 = call i32 @ocfs2_init_dealloc_ctxt(i32* %69)
  %71 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %13, align 8
  %72 = load %struct.ocfs2_write_ctxt**, %struct.ocfs2_write_ctxt*** %7, align 8
  store %struct.ocfs2_write_ctxt* %71, %struct.ocfs2_write_ctxt** %72, align 8
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %67, %18
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local %struct.ocfs2_write_ctxt* @kzalloc(i32, i32) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ocfs2_init_dealloc_ctxt(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
