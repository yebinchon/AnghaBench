; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_pzl.c_update_pzl_pointers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_pzl.c_update_pzl_pointers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.whc = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.whc*, i32, i32)* @update_pzl_pointers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_pzl_pointers(%struct.whc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.whc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.whc* %0, %struct.whc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %109 [
    i32 0, label %8
    i32 1, label %57
    i32 2, label %82
    i32 3, label %95
    i32 4, label %102
  ]

8:                                                ; preds = %3
  %9 = load %struct.whc*, %struct.whc** %4, align 8
  %10 = getelementptr inbounds %struct.whc, %struct.whc* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @whc_qset_set_link_ptr(i32* %12, i32 %13)
  %15 = load %struct.whc*, %struct.whc** %4, align 8
  %16 = getelementptr inbounds %struct.whc, %struct.whc* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @whc_qset_set_link_ptr(i32* %18, i32 %19)
  %21 = load %struct.whc*, %struct.whc** %4, align 8
  %22 = getelementptr inbounds %struct.whc, %struct.whc* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @whc_qset_set_link_ptr(i32* %24, i32 %25)
  %27 = load %struct.whc*, %struct.whc** %4, align 8
  %28 = getelementptr inbounds %struct.whc, %struct.whc* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 6
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @whc_qset_set_link_ptr(i32* %30, i32 %31)
  %33 = load %struct.whc*, %struct.whc** %4, align 8
  %34 = getelementptr inbounds %struct.whc, %struct.whc* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @whc_qset_set_link_ptr(i32* %36, i32 %37)
  %39 = load %struct.whc*, %struct.whc** %4, align 8
  %40 = getelementptr inbounds %struct.whc, %struct.whc* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 10
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @whc_qset_set_link_ptr(i32* %42, i32 %43)
  %45 = load %struct.whc*, %struct.whc** %4, align 8
  %46 = getelementptr inbounds %struct.whc, %struct.whc* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 12
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @whc_qset_set_link_ptr(i32* %48, i32 %49)
  %51 = load %struct.whc*, %struct.whc** %4, align 8
  %52 = getelementptr inbounds %struct.whc, %struct.whc* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 14
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @whc_qset_set_link_ptr(i32* %54, i32 %55)
  br label %109

57:                                               ; preds = %3
  %58 = load %struct.whc*, %struct.whc** %4, align 8
  %59 = getelementptr inbounds %struct.whc, %struct.whc* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @whc_qset_set_link_ptr(i32* %61, i32 %62)
  %64 = load %struct.whc*, %struct.whc** %4, align 8
  %65 = getelementptr inbounds %struct.whc, %struct.whc* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 5
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @whc_qset_set_link_ptr(i32* %67, i32 %68)
  %70 = load %struct.whc*, %struct.whc** %4, align 8
  %71 = getelementptr inbounds %struct.whc, %struct.whc* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 9
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @whc_qset_set_link_ptr(i32* %73, i32 %74)
  %76 = load %struct.whc*, %struct.whc** %4, align 8
  %77 = getelementptr inbounds %struct.whc, %struct.whc* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 13
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @whc_qset_set_link_ptr(i32* %79, i32 %80)
  br label %109

82:                                               ; preds = %3
  %83 = load %struct.whc*, %struct.whc** %4, align 8
  %84 = getelementptr inbounds %struct.whc, %struct.whc* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @whc_qset_set_link_ptr(i32* %86, i32 %87)
  %89 = load %struct.whc*, %struct.whc** %4, align 8
  %90 = getelementptr inbounds %struct.whc, %struct.whc* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 11
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @whc_qset_set_link_ptr(i32* %92, i32 %93)
  br label %109

95:                                               ; preds = %3
  %96 = load %struct.whc*, %struct.whc** %4, align 8
  %97 = getelementptr inbounds %struct.whc, %struct.whc* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 7
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @whc_qset_set_link_ptr(i32* %99, i32 %100)
  br label %109

102:                                              ; preds = %3
  %103 = load %struct.whc*, %struct.whc** %4, align 8
  %104 = getelementptr inbounds %struct.whc, %struct.whc* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 15
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @whc_qset_set_link_ptr(i32* %106, i32 %107)
  br label %109

109:                                              ; preds = %3, %102, %95, %82, %57, %8
  ret void
}

declare dso_local i32 @whc_qset_set_link_ptr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
