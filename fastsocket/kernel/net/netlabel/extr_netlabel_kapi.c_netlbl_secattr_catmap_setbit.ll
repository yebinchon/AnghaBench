; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_kapi.c_netlbl_secattr_catmap_setbit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_kapi.c_netlbl_secattr_catmap_setbit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlbl_lsm_secattr_catmap = type { i32, i32*, %struct.netlbl_lsm_secattr_catmap* }

@NETLBL_CATMAP_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NETLBL_CATMAP_MAPSIZE = common dso_local global i32 0, align 4
@NETLBL_CATMAP_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netlbl_secattr_catmap_setbit(%struct.netlbl_lsm_secattr_catmap* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.netlbl_lsm_secattr_catmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.netlbl_lsm_secattr_catmap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.netlbl_lsm_secattr_catmap* %0, %struct.netlbl_lsm_secattr_catmap** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %5, align 8
  store %struct.netlbl_lsm_secattr_catmap* %11, %struct.netlbl_lsm_secattr_catmap** %8, align 8
  br label %12

12:                                               ; preds = %27, %3
  %13 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %8, align 8
  %14 = getelementptr inbounds %struct.netlbl_lsm_secattr_catmap, %struct.netlbl_lsm_secattr_catmap* %13, i32 0, i32 2
  %15 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %14, align 8
  %16 = icmp ne %struct.netlbl_lsm_secattr_catmap* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %8, align 8
  %20 = getelementptr inbounds %struct.netlbl_lsm_secattr_catmap, %struct.netlbl_lsm_secattr_catmap* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @NETLBL_CATMAP_SIZE, align 4
  %23 = add nsw i32 %21, %22
  %24 = icmp sge i32 %18, %23
  br label %25

25:                                               ; preds = %17, %12
  %26 = phi i1 [ false, %12 ], [ %24, %17 ]
  br i1 %26, label %27, label %31

27:                                               ; preds = %25
  %28 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %8, align 8
  %29 = getelementptr inbounds %struct.netlbl_lsm_secattr_catmap, %struct.netlbl_lsm_secattr_catmap* %28, i32 0, i32 2
  %30 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %29, align 8
  store %struct.netlbl_lsm_secattr_catmap* %30, %struct.netlbl_lsm_secattr_catmap** %8, align 8
  br label %12

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %8, align 8
  %34 = getelementptr inbounds %struct.netlbl_lsm_secattr_catmap, %struct.netlbl_lsm_secattr_catmap* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @NETLBL_CATMAP_SIZE, align 4
  %37 = add nsw i32 %35, %36
  %38 = icmp sge i32 %32, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %31
  %40 = load i32, i32* %7, align 4
  %41 = call %struct.netlbl_lsm_secattr_catmap* @netlbl_secattr_catmap_alloc(i32 %40)
  %42 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %8, align 8
  %43 = getelementptr inbounds %struct.netlbl_lsm_secattr_catmap, %struct.netlbl_lsm_secattr_catmap* %42, i32 0, i32 2
  store %struct.netlbl_lsm_secattr_catmap* %41, %struct.netlbl_lsm_secattr_catmap** %43, align 8
  %44 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %8, align 8
  %45 = getelementptr inbounds %struct.netlbl_lsm_secattr_catmap, %struct.netlbl_lsm_secattr_catmap* %44, i32 0, i32 2
  %46 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %45, align 8
  %47 = icmp eq %struct.netlbl_lsm_secattr_catmap* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %90

51:                                               ; preds = %39
  %52 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %8, align 8
  %53 = getelementptr inbounds %struct.netlbl_lsm_secattr_catmap, %struct.netlbl_lsm_secattr_catmap* %52, i32 0, i32 2
  %54 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %53, align 8
  store %struct.netlbl_lsm_secattr_catmap* %54, %struct.netlbl_lsm_secattr_catmap** %8, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @NETLBL_CATMAP_SIZE, align 4
  %57 = sub nsw i32 %56, 1
  %58 = xor i32 %57, -1
  %59 = and i32 %55, %58
  %60 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %8, align 8
  %61 = getelementptr inbounds %struct.netlbl_lsm_secattr_catmap, %struct.netlbl_lsm_secattr_catmap* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %51, %31
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %8, align 8
  %65 = getelementptr inbounds %struct.netlbl_lsm_secattr_catmap, %struct.netlbl_lsm_secattr_catmap* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %63, %66
  %68 = load i32, i32* @NETLBL_CATMAP_MAPSIZE, align 4
  %69 = sdiv i32 %67, %68
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %8, align 8
  %72 = getelementptr inbounds %struct.netlbl_lsm_secattr_catmap, %struct.netlbl_lsm_secattr_catmap* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %70, %73
  %75 = load i32, i32* @NETLBL_CATMAP_MAPSIZE, align 4
  %76 = load i32, i32* %10, align 4
  %77 = mul nsw i32 %75, %76
  %78 = sub nsw i32 %74, %77
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* @NETLBL_CATMAP_BIT, align 4
  %80 = load i32, i32* %9, align 4
  %81 = shl i32 %79, %80
  %82 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %8, align 8
  %83 = getelementptr inbounds %struct.netlbl_lsm_secattr_catmap, %struct.netlbl_lsm_secattr_catmap* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %81
  store i32 %89, i32* %87, align 4
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %62, %48
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.netlbl_lsm_secattr_catmap* @netlbl_secattr_catmap_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
