; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dtree.c_dtCompare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dtree.c_dtCompare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.component_name = type { i32, i32* }
%struct.TYPE_3__ = type { i32* }
%struct.idtentry = type { i32, i32, i32* }
%struct.dtslot = type { i32, i32* }

@DTIHDRDATALEN = common dso_local global i32 0, align 4
@DTSLOTDATALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.component_name*, %struct.TYPE_3__*, i32)* @dtCompare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtCompare(%struct.component_name* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.component_name*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.idtentry*, align 8
  %15 = alloca %struct.dtslot*, align 8
  store %struct.component_name* %0, %struct.component_name** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.component_name*, %struct.component_name** %5, align 8
  %17 = getelementptr inbounds %struct.component_name, %struct.component_name* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %8, align 8
  %19 = load %struct.component_name*, %struct.component_name** %5, align 8
  %20 = getelementptr inbounds %struct.component_name, %struct.component_name* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %10, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = bitcast i32* %27 to %struct.idtentry*
  store %struct.idtentry* %28, %struct.idtentry** %14, align 8
  %29 = load %struct.idtentry*, %struct.idtentry** %14, align 8
  %30 = getelementptr inbounds %struct.idtentry, %struct.idtentry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %7, align 4
  %32 = load %struct.idtentry*, %struct.idtentry** %14, align 8
  %33 = getelementptr inbounds %struct.idtentry, %struct.idtentry* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %9, align 8
  %35 = load %struct.idtentry*, %struct.idtentry** %14, align 8
  %36 = getelementptr inbounds %struct.idtentry, %struct.idtentry* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @DTIHDRDATALEN, align 4
  %40 = call i32 @min(i32 %38, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @min(i32 %41, i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @UniStrncmp_le(i32* %44, i32* %45, i32 %46)
  store i32 %47, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %3
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %4, align 4
  br label %112

51:                                               ; preds = %3
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %10, align 4
  %54 = sub nsw i32 %53, %52
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %11, align 4
  %57 = sub nsw i32 %56, %55
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32*, i32** %8, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32* %61, i32** %8, align 8
  br label %62

62:                                               ; preds = %94, %51
  %63 = load i32, i32* %10, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* %11, align 4
  %67 = icmp sgt i32 %66, 0
  br label %68

68:                                               ; preds = %65, %62
  %69 = phi i1 [ false, %62 ], [ %67, %65 ]
  br i1 %69, label %70, label %108

70:                                               ; preds = %68
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = bitcast i32* %76 to %struct.dtslot*
  store %struct.dtslot* %77, %struct.dtslot** %15, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @DTSLOTDATALEN, align 4
  %80 = call i32 @min(i32 %78, i32 %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @min(i32 %81, i32 %82)
  store i32 %83, i32* %12, align 4
  %84 = load %struct.dtslot*, %struct.dtslot** %15, align 8
  %85 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  store i32* %86, i32** %9, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @UniStrncmp_le(i32* %87, i32* %88, i32 %89)
  store i32 %90, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %70
  %93 = load i32, i32* %13, align 4
  store i32 %93, i32* %4, align 4
  br label %112

94:                                               ; preds = %70
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %10, align 4
  %97 = sub nsw i32 %96, %95
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %11, align 4
  %100 = sub nsw i32 %99, %98
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load i32*, i32** %8, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32* %104, i32** %8, align 8
  %105 = load %struct.dtslot*, %struct.dtslot** %15, align 8
  %106 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  store i32 %107, i32* %7, align 4
  br label %62

108:                                              ; preds = %68
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %11, align 4
  %111 = sub nsw i32 %109, %110
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %108, %92, %49
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @UniStrncmp_le(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
