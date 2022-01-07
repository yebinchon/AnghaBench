; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3proc.c_nfs3_alloc_createdata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3proc.c_nfs3_alloc_createdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs3_createdata = type { %struct.TYPE_4__, i32, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32*, i32*, i32* }
%struct.TYPE_3__ = type { %struct.TYPE_4__*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs3_createdata* ()* @nfs3_alloc_createdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs3_createdata* @nfs3_alloc_createdata() #0 {
  %1 = alloca %struct.nfs3_createdata*, align 8
  %2 = load i32, i32* @GFP_KERNEL, align 4
  %3 = call %struct.nfs3_createdata* @kzalloc(i32 64, i32 %2)
  store %struct.nfs3_createdata* %3, %struct.nfs3_createdata** %1, align 8
  %4 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %1, align 8
  %5 = icmp ne %struct.nfs3_createdata* %4, null
  br i1 %5, label %6, label %42

6:                                                ; preds = %0
  %7 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %1, align 8
  %8 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %7, i32 0, i32 5
  %9 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %1, align 8
  %10 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store i32* %8, i32** %11, align 8
  %12 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %1, align 8
  %13 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %12, i32 0, i32 0
  %14 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %1, align 8
  %15 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %16, align 8
  %17 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %1, align 8
  %18 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %17, i32 0, i32 3
  %19 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %1, align 8
  %20 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  store i32* %18, i32** %21, align 8
  %22 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %1, align 8
  %23 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %22, i32 0, i32 2
  %24 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %1, align 8
  %25 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store i32* %23, i32** %26, align 8
  %27 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %1, align 8
  %28 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %27, i32 0, i32 1
  %29 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %1, align 8
  %30 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32* %28, i32** %31, align 8
  %32 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %1, align 8
  %33 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @nfs_fattr_init(i32* %35)
  %37 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %1, align 8
  %38 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @nfs_fattr_init(i32* %40)
  br label %42

42:                                               ; preds = %6, %0
  %43 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %1, align 8
  ret %struct.nfs3_createdata* %43
}

declare dso_local %struct.nfs3_createdata* @kzalloc(i32, i32) #1

declare dso_local i32 @nfs_fattr_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
