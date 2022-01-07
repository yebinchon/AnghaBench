; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctdaio.c_dao_rsc_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctdaio.c_dao_rsc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dao = type { %struct.TYPE_5__, i32*, i32, %struct.hw*, %struct.daio_mgr*, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.hw = type { i32 (i32*)*, i32 (%struct.hw*, i32)*, i32 (i32, i32)*, i32 (i32, i32, i32)*, i32 (i32, i32)* }
%struct.daio_desc = type { i32, i32 }
%struct.daio_mgr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.hw* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dao_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dao*, %struct.daio_desc*, %struct.daio_mgr*)* @dao_rsc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dao_rsc_init(%struct.dao* %0, %struct.daio_desc* %1, %struct.daio_mgr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dao*, align 8
  %6 = alloca %struct.daio_desc*, align 8
  %7 = alloca %struct.daio_mgr*, align 8
  %8 = alloca %struct.hw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dao* %0, %struct.dao** %5, align 8
  store %struct.daio_desc* %1, %struct.daio_desc** %6, align 8
  store %struct.daio_mgr* %2, %struct.daio_mgr** %7, align 8
  %11 = load %struct.daio_mgr*, %struct.daio_mgr** %7, align 8
  %12 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.hw*, %struct.hw** %13, align 8
  store %struct.hw* %14, %struct.hw** %8, align 8
  %15 = load %struct.dao*, %struct.dao** %5, align 8
  %16 = getelementptr inbounds %struct.dao, %struct.dao* %15, i32 0, i32 0
  %17 = load %struct.daio_desc*, %struct.daio_desc** %6, align 8
  %18 = load %struct.daio_mgr*, %struct.daio_mgr** %7, align 8
  %19 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.hw*, %struct.hw** %20, align 8
  %22 = call i32 @daio_rsc_init(%struct.TYPE_5__* %16, %struct.daio_desc* %17, %struct.hw* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %4, align 4
  br label %147

27:                                               ; preds = %3
  %28 = load %struct.daio_desc*, %struct.daio_desc** %6, align 8
  %29 = getelementptr inbounds %struct.daio_desc, %struct.daio_desc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 8, %31
  %33 = mul i64 %32, 2
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i32* @kzalloc(i32 %34, i32 %35)
  %37 = load %struct.dao*, %struct.dao** %5, align 8
  %38 = getelementptr inbounds %struct.dao, %struct.dao* %37, i32 0, i32 1
  store i32* %36, i32** %38, align 8
  %39 = load %struct.dao*, %struct.dao** %5, align 8
  %40 = getelementptr inbounds %struct.dao, %struct.dao* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %27
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %10, align 4
  br label %142

46:                                               ; preds = %27
  %47 = load %struct.dao*, %struct.dao** %5, align 8
  %48 = getelementptr inbounds %struct.dao, %struct.dao* %47, i32 0, i32 5
  store i32* @dao_ops, i32** %48, align 8
  %49 = load %struct.daio_mgr*, %struct.daio_mgr** %7, align 8
  %50 = load %struct.dao*, %struct.dao** %5, align 8
  %51 = getelementptr inbounds %struct.dao, %struct.dao* %50, i32 0, i32 4
  store %struct.daio_mgr* %49, %struct.daio_mgr** %51, align 8
  %52 = load %struct.hw*, %struct.hw** %8, align 8
  %53 = load %struct.dao*, %struct.dao** %5, align 8
  %54 = getelementptr inbounds %struct.dao, %struct.dao* %53, i32 0, i32 3
  store %struct.hw* %52, %struct.hw** %54, align 8
  %55 = load %struct.hw*, %struct.hw** %8, align 8
  %56 = getelementptr inbounds %struct.hw, %struct.hw* %55, i32 0, i32 0
  %57 = load i32 (i32*)*, i32 (i32*)** %56, align 8
  %58 = load %struct.dao*, %struct.dao** %5, align 8
  %59 = getelementptr inbounds %struct.dao, %struct.dao* %58, i32 0, i32 2
  %60 = call i32 %57(i32* %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %46
  br label %135

64:                                               ; preds = %46
  %65 = load %struct.hw*, %struct.hw** %8, align 8
  %66 = getelementptr inbounds %struct.hw, %struct.hw* %65, i32 0, i32 4
  %67 = load i32 (i32, i32)*, i32 (i32, i32)** %66, align 8
  %68 = load %struct.daio_mgr*, %struct.daio_mgr** %7, align 8
  %69 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.dao*, %struct.dao** %5, align 8
  %73 = getelementptr inbounds %struct.dao, %struct.dao* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.hw*, %struct.hw** %8, align 8
  %77 = call i32 @daio_device_index(i32 %75, %struct.hw* %76)
  %78 = call i32 %67(i32 %71, i32 %77)
  %79 = load %struct.hw*, %struct.hw** %8, align 8
  %80 = getelementptr inbounds %struct.hw, %struct.hw* %79, i32 0, i32 1
  %81 = load i32 (%struct.hw*, i32)*, i32 (%struct.hw*, i32)** %80, align 8
  %82 = load %struct.hw*, %struct.hw** %8, align 8
  %83 = load %struct.daio_mgr*, %struct.daio_mgr** %7, align 8
  %84 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 %81(%struct.hw* %82, i32 %86)
  %88 = load %struct.daio_desc*, %struct.daio_desc** %6, align 8
  %89 = getelementptr inbounds %struct.daio_desc, %struct.daio_desc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 7
  %92 = load %struct.daio_desc*, %struct.daio_desc** %6, align 8
  %93 = getelementptr inbounds %struct.daio_desc, %struct.daio_desc* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %94, 3
  %96 = or i32 %91, %95
  store i32 %96, i32* %9, align 4
  %97 = load %struct.hw*, %struct.hw** %8, align 8
  %98 = getelementptr inbounds %struct.hw, %struct.hw* %97, i32 0, i32 3
  %99 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %98, align 8
  %100 = load %struct.daio_mgr*, %struct.daio_mgr** %7, align 8
  %101 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.dao*, %struct.dao** %5, align 8
  %105 = getelementptr inbounds %struct.dao, %struct.dao* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.hw*, %struct.hw** %8, align 8
  %109 = call i32 @daio_device_index(i32 %107, %struct.hw* %108)
  %110 = load i32, i32* %9, align 4
  %111 = call i32 %99(i32 %103, i32 %109, i32 %110)
  %112 = load %struct.hw*, %struct.hw** %8, align 8
  %113 = getelementptr inbounds %struct.hw, %struct.hw* %112, i32 0, i32 2
  %114 = load i32 (i32, i32)*, i32 (i32, i32)** %113, align 8
  %115 = load %struct.daio_mgr*, %struct.daio_mgr** %7, align 8
  %116 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.dao*, %struct.dao** %5, align 8
  %120 = getelementptr inbounds %struct.dao, %struct.dao* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.hw*, %struct.hw** %8, align 8
  %124 = call i32 @daio_device_index(i32 %122, %struct.hw* %123)
  %125 = call i32 %114(i32 %118, i32 %124)
  %126 = load %struct.hw*, %struct.hw** %8, align 8
  %127 = getelementptr inbounds %struct.hw, %struct.hw* %126, i32 0, i32 1
  %128 = load i32 (%struct.hw*, i32)*, i32 (%struct.hw*, i32)** %127, align 8
  %129 = load %struct.hw*, %struct.hw** %8, align 8
  %130 = load %struct.daio_mgr*, %struct.daio_mgr** %7, align 8
  %131 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 %128(%struct.hw* %129, i32 %133)
  store i32 0, i32* %4, align 4
  br label %147

135:                                              ; preds = %63
  %136 = load %struct.dao*, %struct.dao** %5, align 8
  %137 = getelementptr inbounds %struct.dao, %struct.dao* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = call i32 @kfree(i32* %138)
  %140 = load %struct.dao*, %struct.dao** %5, align 8
  %141 = getelementptr inbounds %struct.dao, %struct.dao* %140, i32 0, i32 1
  store i32* null, i32** %141, align 8
  br label %142

142:                                              ; preds = %135, %43
  %143 = load %struct.dao*, %struct.dao** %5, align 8
  %144 = getelementptr inbounds %struct.dao, %struct.dao* %143, i32 0, i32 0
  %145 = call i32 @daio_rsc_uninit(%struct.TYPE_5__* %144)
  %146 = load i32, i32* %10, align 4
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %142, %64, %25
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @daio_rsc_init(%struct.TYPE_5__*, %struct.daio_desc*, %struct.hw*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @daio_device_index(i32, %struct.hw*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @daio_rsc_uninit(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
