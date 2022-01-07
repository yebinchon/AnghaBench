; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_super.c_alloc_wbufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_super.c_alloc_wbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bud_wbuf_callback = common dso_local global i32 0, align 4
@UBI_SHORTTERM = common dso_local global i32 0, align 4
@BASEHD = common dso_local global i64 0, align 8
@UBI_LONGTERM = common dso_local global i32 0, align 4
@GCHD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*)* @alloc_wbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_wbufs(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %6 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %7 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 4
  %11 = trunc i64 %10 to i32
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.TYPE_4__* @kzalloc(i32 %11, i32 %12)
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %15 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %14, i32 0, i32 1
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %15, align 8
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %17 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %97

23:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %70, %23
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %27 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %73

30:                                               ; preds = %24
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %32 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %41 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = call i32 @ubifs_wbuf_init(%struct.ubifs_info* %39, %struct.TYPE_3__* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %30
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %97

52:                                               ; preds = %30
  %53 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %54 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  store i32* @bud_wbuf_callback, i32** %60, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %63 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store i32 %61, i32* %69, align 8
  br label %70

70:                                               ; preds = %52
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %24

73:                                               ; preds = %24
  %74 = load i32, i32* @UBI_SHORTTERM, align 4
  %75 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %76 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i64, i64* @BASEHD, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  store i32 %74, i32* %81, align 8
  %82 = load i32, i32* @UBI_LONGTERM, align 4
  %83 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %84 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load i64, i64* @GCHD, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  store i32 %82, i32* %89, align 8
  %90 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %91 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %90, i32 0, i32 1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load i64, i64* @GCHD, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  store i32 1, i32* %96, align 4
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %73, %50, %20
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.TYPE_4__* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ubifs_wbuf_init(%struct.ubifs_info*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
