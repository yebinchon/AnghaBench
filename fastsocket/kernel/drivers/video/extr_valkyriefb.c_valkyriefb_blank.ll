; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_valkyriefb.c_valkyriefb_blank.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_valkyriefb.c_valkyriefb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fb_par_valkyrie* }
%struct.fb_par_valkyrie = type { %struct.valkyrie_regvals* }
%struct.valkyrie_regvals = type { i32 }
%struct.fb_info_valkyrie = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @valkyriefb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valkyriefb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.fb_info_valkyrie*, align 8
  %7 = alloca %struct.fb_par_valkyrie*, align 8
  %8 = alloca %struct.valkyrie_regvals*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %10 = bitcast %struct.fb_info* %9 to %struct.fb_info_valkyrie*
  store %struct.fb_info_valkyrie* %10, %struct.fb_info_valkyrie** %6, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 0
  %13 = load %struct.fb_par_valkyrie*, %struct.fb_par_valkyrie** %12, align 8
  store %struct.fb_par_valkyrie* %13, %struct.fb_par_valkyrie** %7, align 8
  %14 = load %struct.fb_par_valkyrie*, %struct.fb_par_valkyrie** %7, align 8
  %15 = getelementptr inbounds %struct.fb_par_valkyrie, %struct.fb_par_valkyrie* %14, i32 0, i32 0
  %16 = load %struct.valkyrie_regvals*, %struct.valkyrie_regvals** %15, align 8
  store %struct.valkyrie_regvals* %16, %struct.valkyrie_regvals** %8, align 8
  %17 = load %struct.valkyrie_regvals*, %struct.valkyrie_regvals** %8, align 8
  %18 = icmp eq %struct.valkyrie_regvals* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %52

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %51 [
    i32 129, label %22
    i32 131, label %32
    i32 128, label %33
    i32 132, label %33
    i32 130, label %44
  ]

22:                                               ; preds = %20
  %23 = load %struct.fb_info_valkyrie*, %struct.fb_info_valkyrie** %6, align 8
  %24 = getelementptr inbounds %struct.fb_info_valkyrie, %struct.fb_info_valkyrie* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.valkyrie_regvals*, %struct.valkyrie_regvals** %8, align 8
  %29 = getelementptr inbounds %struct.valkyrie_regvals, %struct.valkyrie_regvals* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @out_8(i32* %27, i32 %30)
  br label %51

32:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %52

33:                                               ; preds = %20, %20
  %34 = load %struct.fb_info_valkyrie*, %struct.fb_info_valkyrie** %6, align 8
  %35 = getelementptr inbounds %struct.fb_info_valkyrie, %struct.fb_info_valkyrie* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load %struct.valkyrie_regvals*, %struct.valkyrie_regvals** %8, align 8
  %40 = getelementptr inbounds %struct.valkyrie_regvals, %struct.valkyrie_regvals* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, 64
  %43 = call i32 @out_8(i32* %38, i32 %42)
  br label %51

44:                                               ; preds = %20
  %45 = load %struct.fb_info_valkyrie*, %struct.fb_info_valkyrie** %6, align 8
  %46 = getelementptr inbounds %struct.fb_info_valkyrie, %struct.fb_info_valkyrie* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = call i32 @out_8(i32* %49, i32 102)
  br label %51

51:                                               ; preds = %20, %44, %33, %22
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %32, %19
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @out_8(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
