; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctsrc.c_srcimp_mgr_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctsrc.c_srcimp_mgr_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srcimp_mgr = type { i32, i32, i32, i32, i32, i32, %struct.imapper*, i32, i32, i32 }
%struct.imapper = type { i32, i64, i64, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SRCIMP = common dso_local global i32 0, align 4
@SRCIMP_RESOURCE_NUM = common dso_local global i32 0, align 4
@get_srcimp_rsc = common dso_local global i32 0, align 4
@put_srcimp_rsc = common dso_local global i32 0, align 4
@srcimp_imap_add = common dso_local global i32 0, align 4
@srcimp_imap_delete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @srcimp_mgr_create(i8* %0, %struct.srcimp_mgr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.srcimp_mgr**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.srcimp_mgr*, align 8
  %8 = alloca %struct.imapper*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.srcimp_mgr** %1, %struct.srcimp_mgr*** %5, align 8
  %9 = load %struct.srcimp_mgr**, %struct.srcimp_mgr*** %5, align 8
  store %struct.srcimp_mgr* null, %struct.srcimp_mgr** %9, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @kzalloc(i32 48, i32 %10)
  %12 = bitcast i8* %11 to %struct.srcimp_mgr*
  store %struct.srcimp_mgr* %12, %struct.srcimp_mgr** %7, align 8
  %13 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %7, align 8
  %14 = icmp ne %struct.srcimp_mgr* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %87

18:                                               ; preds = %2
  %19 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %7, align 8
  %20 = getelementptr inbounds %struct.srcimp_mgr, %struct.srcimp_mgr* %19, i32 0, i32 1
  %21 = load i32, i32* @SRCIMP, align 4
  %22 = load i32, i32* @SRCIMP_RESOURCE_NUM, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @rsc_mgr_init(i32* %20, i32 %21, i32 %22, i8* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %83

28:                                               ; preds = %18
  %29 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %7, align 8
  %30 = getelementptr inbounds %struct.srcimp_mgr, %struct.srcimp_mgr* %29, i32 0, i32 9
  %31 = call i32 @spin_lock_init(i32* %30)
  %32 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %7, align 8
  %33 = getelementptr inbounds %struct.srcimp_mgr, %struct.srcimp_mgr* %32, i32 0, i32 8
  %34 = call i32 @spin_lock_init(i32* %33)
  %35 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %7, align 8
  %36 = getelementptr inbounds %struct.srcimp_mgr, %struct.srcimp_mgr* %35, i32 0, i32 7
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @kzalloc(i32 40, i32 %38)
  %40 = bitcast i8* %39 to %struct.imapper*
  store %struct.imapper* %40, %struct.imapper** %8, align 8
  %41 = load %struct.imapper*, %struct.imapper** %8, align 8
  %42 = icmp ne %struct.imapper* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %28
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %79

46:                                               ; preds = %28
  %47 = load %struct.imapper*, %struct.imapper** %8, align 8
  %48 = getelementptr inbounds %struct.imapper, %struct.imapper* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.imapper*, %struct.imapper** %8, align 8
  %50 = getelementptr inbounds %struct.imapper, %struct.imapper* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = load %struct.imapper*, %struct.imapper** %8, align 8
  %52 = getelementptr inbounds %struct.imapper, %struct.imapper* %51, i32 0, i32 3
  store i64 0, i64* %52, align 8
  %53 = load %struct.imapper*, %struct.imapper** %8, align 8
  %54 = getelementptr inbounds %struct.imapper, %struct.imapper* %53, i32 0, i32 4
  store i64 0, i64* %54, align 8
  %55 = load %struct.imapper*, %struct.imapper** %8, align 8
  %56 = getelementptr inbounds %struct.imapper, %struct.imapper* %55, i32 0, i32 0
  %57 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %7, align 8
  %58 = getelementptr inbounds %struct.srcimp_mgr, %struct.srcimp_mgr* %57, i32 0, i32 7
  %59 = call i32 @list_add(i32* %56, i32* %58)
  %60 = load %struct.imapper*, %struct.imapper** %8, align 8
  %61 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %7, align 8
  %62 = getelementptr inbounds %struct.srcimp_mgr, %struct.srcimp_mgr* %61, i32 0, i32 6
  store %struct.imapper* %60, %struct.imapper** %62, align 8
  %63 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %7, align 8
  %64 = getelementptr inbounds %struct.srcimp_mgr, %struct.srcimp_mgr* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load i32, i32* @get_srcimp_rsc, align 4
  %66 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %7, align 8
  %67 = getelementptr inbounds %struct.srcimp_mgr, %struct.srcimp_mgr* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @put_srcimp_rsc, align 4
  %69 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %7, align 8
  %70 = getelementptr inbounds %struct.srcimp_mgr, %struct.srcimp_mgr* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @srcimp_imap_add, align 4
  %72 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %7, align 8
  %73 = getelementptr inbounds %struct.srcimp_mgr, %struct.srcimp_mgr* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @srcimp_imap_delete, align 4
  %75 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %7, align 8
  %76 = getelementptr inbounds %struct.srcimp_mgr, %struct.srcimp_mgr* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %7, align 8
  %78 = load %struct.srcimp_mgr**, %struct.srcimp_mgr*** %5, align 8
  store %struct.srcimp_mgr* %77, %struct.srcimp_mgr** %78, align 8
  store i32 0, i32* %3, align 4
  br label %87

79:                                               ; preds = %43
  %80 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %7, align 8
  %81 = getelementptr inbounds %struct.srcimp_mgr, %struct.srcimp_mgr* %80, i32 0, i32 1
  %82 = call i32 @rsc_mgr_uninit(i32* %81)
  br label %83

83:                                               ; preds = %79, %27
  %84 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %7, align 8
  %85 = call i32 @kfree(%struct.srcimp_mgr* %84)
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %83, %46, %15
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @rsc_mgr_init(i32*, i32, i32, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @rsc_mgr_uninit(i32*) #1

declare dso_local i32 @kfree(%struct.srcimp_mgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
