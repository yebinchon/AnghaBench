; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_pzl.c_pzl_process_qset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_pzl.c_pzl_process_qset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.whc = type { i32 }
%struct.whc_qset = type { i64, i32, i64, %struct.whc_qtd* }
%struct.whc_qtd = type { i32 }

@QTD_STS_ACTIVE = common dso_local global i32 0, align 4
@QTD_STS_HALTED = common dso_local global i32 0, align 4
@WHC_UPDATE_UPDATED = common dso_local global i32 0, align 4
@WHC_UPDATE_REMOVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.whc*, %struct.whc_qset*)* @pzl_process_qset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pzl_process_qset(%struct.whc* %0, %struct.whc_qset* %1) #0 {
  %3 = alloca %struct.whc*, align 8
  %4 = alloca %struct.whc_qset*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.whc_qtd*, align 8
  %8 = alloca i32, align 4
  store %struct.whc* %0, %struct.whc** %3, align 8
  store %struct.whc_qset* %1, %struct.whc_qset** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %48, %2
  %10 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %11 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %53

14:                                               ; preds = %9
  %15 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %16 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %19 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %18, i32 0, i32 3
  %20 = load %struct.whc_qtd*, %struct.whc_qtd** %19, align 8
  %21 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %22 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.whc_qtd, %struct.whc_qtd* %20, i64 %24
  store %struct.whc_qtd* %25, %struct.whc_qtd** %7, align 8
  %26 = load %struct.whc_qtd*, %struct.whc_qtd** %7, align 8
  %27 = getelementptr inbounds %struct.whc_qtd, %struct.whc_qtd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le32_to_cpu(i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @QTD_STS_ACTIVE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %14
  br label %53

35:                                               ; preds = %14
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @QTD_STS_HALTED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.whc*, %struct.whc** %3, align 8
  %42 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %43 = load %struct.whc_qtd*, %struct.whc_qtd** %7, align 8
  %44 = call i32 @process_halted_qtd(%struct.whc* %41, %struct.whc_qset* %42, %struct.whc_qtd* %43)
  %45 = load i32, i32* @WHC_UPDATE_UPDATED, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %65

48:                                               ; preds = %35
  %49 = load %struct.whc*, %struct.whc** %3, align 8
  %50 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %51 = load %struct.whc_qtd*, %struct.whc_qtd** %7, align 8
  %52 = call i32 @process_inactive_qtd(%struct.whc* %49, %struct.whc_qset* %50, %struct.whc_qtd* %51)
  br label %9

53:                                               ; preds = %34, %9
  %54 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %55 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %53
  %59 = load %struct.whc*, %struct.whc** %3, align 8
  %60 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %61 = call i32 @qset_add_qtds(%struct.whc* %59, %struct.whc_qset* %60)
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %58, %53
  br label %65

65:                                               ; preds = %64, %40
  %66 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %67 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %65
  %71 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %72 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load %struct.whc*, %struct.whc** %3, align 8
  %77 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %78 = call i32 @pzl_qset_remove(%struct.whc* %76, %struct.whc_qset* %77)
  %79 = load i32, i32* @WHC_UPDATE_REMOVED, align 4
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %75, %70, %65
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @process_halted_qtd(%struct.whc*, %struct.whc_qset*, %struct.whc_qtd*) #1

declare dso_local i32 @process_inactive_qtd(%struct.whc*, %struct.whc_qset*, %struct.whc_qtd*) #1

declare dso_local i32 @qset_add_qtds(%struct.whc*, %struct.whc_qset*) #1

declare dso_local i32 @pzl_qset_remove(%struct.whc*, %struct.whc_qset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
