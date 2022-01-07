; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctsrc.c_src_mgr_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctsrc.c_src_mgr_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.src_mgr = type { %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hw = type { i32 (i8*, i32)*, i32 (i32, i32)*, i32 (...)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SRC = common dso_local global i32 0, align 4
@SRC_RESOURCE_NUM = common dso_local global i32 0, align 4
@conj_mask = common dso_local global i32 0, align 4
@get_src_rsc = common dso_local global i32 0, align 4
@put_src_rsc = common dso_local global i32 0, align 4
@src_enable_s = common dso_local global i32 0, align 4
@src_enable = common dso_local global i32 0, align 4
@src_disable = common dso_local global i32 0, align 4
@src_mgr_commit_write = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @src_mgr_create(i8* %0, %struct.src_mgr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.src_mgr**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.src_mgr*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.src_mgr** %1, %struct.src_mgr*** %5, align 8
  %9 = load %struct.src_mgr**, %struct.src_mgr*** %5, align 8
  store %struct.src_mgr* null, %struct.src_mgr** %9, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.src_mgr* @kzalloc(i32 32, i32 %10)
  store %struct.src_mgr* %11, %struct.src_mgr** %8, align 8
  %12 = load %struct.src_mgr*, %struct.src_mgr** %8, align 8
  %13 = icmp ne %struct.src_mgr* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %88

17:                                               ; preds = %2
  %18 = load %struct.src_mgr*, %struct.src_mgr** %8, align 8
  %19 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %18, i32 0, i32 0
  %20 = load i32, i32* @SRC, align 4
  %21 = load i32, i32* @SRC_RESOURCE_NUM, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @rsc_mgr_init(%struct.TYPE_2__* %19, i32 %20, i32 %21, i8* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %84

27:                                               ; preds = %17
  %28 = load %struct.src_mgr*, %struct.src_mgr** %8, align 8
  %29 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %28, i32 0, i32 7
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load i8*, i8** %4, align 8
  %32 = bitcast i8* %31 to %struct.hw*
  %33 = getelementptr inbounds %struct.hw, %struct.hw* %32, i32 0, i32 2
  %34 = load i32 (...)*, i32 (...)** %33, align 8
  %35 = call i32 (...) %34()
  store i32 %35, i32* @conj_mask, align 4
  %36 = load i32, i32* @get_src_rsc, align 4
  %37 = load %struct.src_mgr*, %struct.src_mgr** %8, align 8
  %38 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @put_src_rsc, align 4
  %40 = load %struct.src_mgr*, %struct.src_mgr** %8, align 8
  %41 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @src_enable_s, align 4
  %43 = load %struct.src_mgr*, %struct.src_mgr** %8, align 8
  %44 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @src_enable, align 4
  %46 = load %struct.src_mgr*, %struct.src_mgr** %8, align 8
  %47 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @src_disable, align 4
  %49 = load %struct.src_mgr*, %struct.src_mgr** %8, align 8
  %50 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @src_mgr_commit_write, align 4
  %52 = load %struct.src_mgr*, %struct.src_mgr** %8, align 8
  %53 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %68, %27
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 256
  br i1 %56, label %57, label %71

57:                                               ; preds = %54
  %58 = load i8*, i8** %4, align 8
  %59 = bitcast i8* %58 to %struct.hw*
  %60 = getelementptr inbounds %struct.hw, %struct.hw* %59, i32 0, i32 1
  %61 = load i32 (i32, i32)*, i32 (i32, i32)** %60, align 8
  %62 = load %struct.src_mgr*, %struct.src_mgr** %8, align 8
  %63 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 %61(i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %57
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %54

71:                                               ; preds = %54
  %72 = load i8*, i8** %4, align 8
  %73 = bitcast i8* %72 to %struct.hw*
  %74 = getelementptr inbounds %struct.hw, %struct.hw* %73, i32 0, i32 0
  %75 = load i32 (i8*, i32)*, i32 (i8*, i32)** %74, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = load %struct.src_mgr*, %struct.src_mgr** %8, align 8
  %78 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 %75(i8* %76, i32 %80)
  %82 = load %struct.src_mgr*, %struct.src_mgr** %8, align 8
  %83 = load %struct.src_mgr**, %struct.src_mgr*** %5, align 8
  store %struct.src_mgr* %82, %struct.src_mgr** %83, align 8
  store i32 0, i32* %3, align 4
  br label %88

84:                                               ; preds = %26
  %85 = load %struct.src_mgr*, %struct.src_mgr** %8, align 8
  %86 = call i32 @kfree(%struct.src_mgr* %85)
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %84, %71, %14
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.src_mgr* @kzalloc(i32, i32) #1

declare dso_local i32 @rsc_mgr_init(%struct.TYPE_2__*, i32, i32, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kfree(%struct.src_mgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
