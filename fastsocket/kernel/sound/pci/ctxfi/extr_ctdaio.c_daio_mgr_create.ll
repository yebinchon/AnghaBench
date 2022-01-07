; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctdaio.c_daio_mgr_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctdaio.c_daio_mgr_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.daio_mgr = type { i32, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32, %struct.imapper*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.imapper = type { i32, i64, i64, i64, i64 }
%struct.hw = type { i32 (i8*, i32)*, i32 (i32, i32)*, i32 (i32, i32)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DAIO = common dso_local global i32 0, align 4
@DAIO_RESOURCE_NUM = common dso_local global i32 0, align 4
@get_daio_rsc = common dso_local global i32 0, align 4
@put_daio_rsc = common dso_local global i32 0, align 4
@daio_mgr_enb_daio = common dso_local global i32 0, align 4
@daio_mgr_dsb_daio = common dso_local global i32 0, align 4
@daio_imap_add = common dso_local global i32 0, align 4
@daio_imap_delete = common dso_local global i32 0, align 4
@daio_mgr_commit_write = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @daio_mgr_create(i8* %0, %struct.daio_mgr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.daio_mgr**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.daio_mgr*, align 8
  %9 = alloca %struct.imapper*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.daio_mgr** %1, %struct.daio_mgr*** %5, align 8
  %10 = load %struct.daio_mgr**, %struct.daio_mgr*** %5, align 8
  store %struct.daio_mgr* null, %struct.daio_mgr** %10, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @kzalloc(i32 64, i32 %11)
  %13 = bitcast i8* %12 to %struct.daio_mgr*
  store %struct.daio_mgr* %13, %struct.daio_mgr** %8, align 8
  %14 = load %struct.daio_mgr*, %struct.daio_mgr** %8, align 8
  %15 = icmp ne %struct.daio_mgr* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %135

19:                                               ; preds = %2
  %20 = load %struct.daio_mgr*, %struct.daio_mgr** %8, align 8
  %21 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %20, i32 0, i32 1
  %22 = load i32, i32* @DAIO, align 4
  %23 = load i32, i32* @DAIO_RESOURCE_NUM, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @rsc_mgr_init(%struct.TYPE_3__* %21, i32 %22, i32 %23, i8* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %131

29:                                               ; preds = %19
  %30 = load %struct.daio_mgr*, %struct.daio_mgr** %8, align 8
  %31 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %30, i32 0, i32 12
  %32 = call i32 @spin_lock_init(i32* %31)
  %33 = load %struct.daio_mgr*, %struct.daio_mgr** %8, align 8
  %34 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %33, i32 0, i32 11
  %35 = call i32 @spin_lock_init(i32* %34)
  %36 = load %struct.daio_mgr*, %struct.daio_mgr** %8, align 8
  %37 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %36, i32 0, i32 10
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i8* @kzalloc(i32 40, i32 %39)
  %41 = bitcast i8* %40 to %struct.imapper*
  store %struct.imapper* %41, %struct.imapper** %9, align 8
  %42 = load %struct.imapper*, %struct.imapper** %9, align 8
  %43 = icmp ne %struct.imapper* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %29
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %127

47:                                               ; preds = %29
  %48 = load %struct.imapper*, %struct.imapper** %9, align 8
  %49 = getelementptr inbounds %struct.imapper, %struct.imapper* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.imapper*, %struct.imapper** %9, align 8
  %51 = getelementptr inbounds %struct.imapper, %struct.imapper* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load %struct.imapper*, %struct.imapper** %9, align 8
  %53 = getelementptr inbounds %struct.imapper, %struct.imapper* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  %54 = load %struct.imapper*, %struct.imapper** %9, align 8
  %55 = getelementptr inbounds %struct.imapper, %struct.imapper* %54, i32 0, i32 4
  store i64 0, i64* %55, align 8
  %56 = load %struct.imapper*, %struct.imapper** %9, align 8
  %57 = getelementptr inbounds %struct.imapper, %struct.imapper* %56, i32 0, i32 0
  %58 = load %struct.daio_mgr*, %struct.daio_mgr** %8, align 8
  %59 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %58, i32 0, i32 10
  %60 = call i32 @list_add(i32* %57, i32* %59)
  %61 = load %struct.imapper*, %struct.imapper** %9, align 8
  %62 = load %struct.daio_mgr*, %struct.daio_mgr** %8, align 8
  %63 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %62, i32 0, i32 9
  store %struct.imapper* %61, %struct.imapper** %63, align 8
  %64 = load %struct.daio_mgr*, %struct.daio_mgr** %8, align 8
  %65 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load i32, i32* @get_daio_rsc, align 4
  %67 = load %struct.daio_mgr*, %struct.daio_mgr** %8, align 8
  %68 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %67, i32 0, i32 8
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @put_daio_rsc, align 4
  %70 = load %struct.daio_mgr*, %struct.daio_mgr** %8, align 8
  %71 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %70, i32 0, i32 7
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @daio_mgr_enb_daio, align 4
  %73 = load %struct.daio_mgr*, %struct.daio_mgr** %8, align 8
  %74 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %73, i32 0, i32 6
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @daio_mgr_dsb_daio, align 4
  %76 = load %struct.daio_mgr*, %struct.daio_mgr** %8, align 8
  %77 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @daio_imap_add, align 4
  %79 = load %struct.daio_mgr*, %struct.daio_mgr** %8, align 8
  %80 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @daio_imap_delete, align 4
  %82 = load %struct.daio_mgr*, %struct.daio_mgr** %8, align 8
  %83 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @daio_mgr_commit_write, align 4
  %85 = load %struct.daio_mgr*, %struct.daio_mgr** %8, align 8
  %86 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %111, %47
  %88 = load i32, i32* %7, align 4
  %89 = icmp slt i32 %88, 8
  br i1 %89, label %90, label %114

90:                                               ; preds = %87
  %91 = load i8*, i8** %4, align 8
  %92 = bitcast i8* %91 to %struct.hw*
  %93 = getelementptr inbounds %struct.hw, %struct.hw* %92, i32 0, i32 2
  %94 = load i32 (i32, i32)*, i32 (i32, i32)** %93, align 8
  %95 = load %struct.daio_mgr*, %struct.daio_mgr** %8, align 8
  %96 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 %94(i32 %98, i32 %99)
  %101 = load i8*, i8** %4, align 8
  %102 = bitcast i8* %101 to %struct.hw*
  %103 = getelementptr inbounds %struct.hw, %struct.hw* %102, i32 0, i32 1
  %104 = load i32 (i32, i32)*, i32 (i32, i32)** %103, align 8
  %105 = load %struct.daio_mgr*, %struct.daio_mgr** %8, align 8
  %106 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %7, align 4
  %110 = call i32 %104(i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %90
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  br label %87

114:                                              ; preds = %87
  %115 = load i8*, i8** %4, align 8
  %116 = bitcast i8* %115 to %struct.hw*
  %117 = getelementptr inbounds %struct.hw, %struct.hw* %116, i32 0, i32 0
  %118 = load i32 (i8*, i32)*, i32 (i8*, i32)** %117, align 8
  %119 = load i8*, i8** %4, align 8
  %120 = load %struct.daio_mgr*, %struct.daio_mgr** %8, align 8
  %121 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 %118(i8* %119, i32 %123)
  %125 = load %struct.daio_mgr*, %struct.daio_mgr** %8, align 8
  %126 = load %struct.daio_mgr**, %struct.daio_mgr*** %5, align 8
  store %struct.daio_mgr* %125, %struct.daio_mgr** %126, align 8
  store i32 0, i32* %3, align 4
  br label %135

127:                                              ; preds = %44
  %128 = load %struct.daio_mgr*, %struct.daio_mgr** %8, align 8
  %129 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %128, i32 0, i32 1
  %130 = call i32 @rsc_mgr_uninit(%struct.TYPE_3__* %129)
  br label %131

131:                                              ; preds = %127, %28
  %132 = load %struct.daio_mgr*, %struct.daio_mgr** %8, align 8
  %133 = call i32 @kfree(%struct.daio_mgr* %132)
  %134 = load i32, i32* %6, align 4
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %131, %114, %16
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @rsc_mgr_init(%struct.TYPE_3__*, i32, i32, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @rsc_mgr_uninit(%struct.TYPE_3__*) #1

declare dso_local i32 @kfree(%struct.daio_mgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
