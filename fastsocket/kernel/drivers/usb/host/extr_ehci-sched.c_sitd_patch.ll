; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-sched.c_sitd_patch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-sched.c_sitd_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { i32 }
%struct.ehci_iso_stream = type { i32, i32 }
%struct.ehci_sitd = type { i32, i8**, i8**, i8*, i32, i32, i32, i8* }
%struct.ehci_iso_sched = type { %struct.ehci_iso_packet* }
%struct.ehci_iso_packet = type { i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehci_hcd*, %struct.ehci_iso_stream*, %struct.ehci_sitd*, %struct.ehci_iso_sched*, i32)* @sitd_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sitd_patch(%struct.ehci_hcd* %0, %struct.ehci_iso_stream* %1, %struct.ehci_sitd* %2, %struct.ehci_iso_sched* %3, i32 %4) #0 {
  %6 = alloca %struct.ehci_hcd*, align 8
  %7 = alloca %struct.ehci_iso_stream*, align 8
  %8 = alloca %struct.ehci_sitd*, align 8
  %9 = alloca %struct.ehci_iso_sched*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ehci_iso_packet*, align 8
  %12 = alloca i32, align 4
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %6, align 8
  store %struct.ehci_iso_stream* %1, %struct.ehci_iso_stream** %7, align 8
  store %struct.ehci_sitd* %2, %struct.ehci_sitd** %8, align 8
  store %struct.ehci_iso_sched* %3, %struct.ehci_iso_sched** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.ehci_iso_sched*, %struct.ehci_iso_sched** %9, align 8
  %14 = getelementptr inbounds %struct.ehci_iso_sched, %struct.ehci_iso_sched* %13, i32 0, i32 0
  %15 = load %struct.ehci_iso_packet*, %struct.ehci_iso_packet** %14, align 8
  %16 = load i32, i32* %10, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ehci_iso_packet, %struct.ehci_iso_packet* %15, i64 %17
  store %struct.ehci_iso_packet* %18, %struct.ehci_iso_packet** %11, align 8
  %19 = load %struct.ehci_iso_packet*, %struct.ehci_iso_packet** %11, align 8
  %20 = getelementptr inbounds %struct.ehci_iso_packet, %struct.ehci_iso_packet* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %12, align 4
  %22 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %23 = call i8* @EHCI_LIST_END(%struct.ehci_hcd* %22)
  %24 = load %struct.ehci_sitd*, %struct.ehci_sitd** %8, align 8
  %25 = getelementptr inbounds %struct.ehci_sitd, %struct.ehci_sitd* %24, i32 0, i32 7
  store i8* %23, i8** %25, align 8
  %26 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %7, align 8
  %27 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ehci_sitd*, %struct.ehci_sitd** %8, align 8
  %30 = getelementptr inbounds %struct.ehci_sitd, %struct.ehci_sitd* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %7, align 8
  %32 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ehci_sitd*, %struct.ehci_sitd** %8, align 8
  %35 = getelementptr inbounds %struct.ehci_sitd, %struct.ehci_sitd* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ehci_iso_packet*, %struct.ehci_iso_packet** %11, align 8
  %37 = getelementptr inbounds %struct.ehci_iso_packet, %struct.ehci_iso_packet* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ehci_sitd*, %struct.ehci_sitd** %8, align 8
  %40 = getelementptr inbounds %struct.ehci_sitd, %struct.ehci_sitd* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %42 = call i8* @EHCI_LIST_END(%struct.ehci_hcd* %41)
  %43 = load %struct.ehci_sitd*, %struct.ehci_sitd** %8, align 8
  %44 = getelementptr inbounds %struct.ehci_sitd, %struct.ehci_sitd* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  %45 = load %struct.ehci_iso_packet*, %struct.ehci_iso_packet** %11, align 8
  %46 = getelementptr inbounds %struct.ehci_iso_packet, %struct.ehci_iso_packet* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %12, align 4
  %48 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i8* @cpu_to_hc32(%struct.ehci_hcd* %48, i32 %49)
  %51 = load %struct.ehci_sitd*, %struct.ehci_sitd** %8, align 8
  %52 = getelementptr inbounds %struct.ehci_sitd, %struct.ehci_sitd* %51, i32 0, i32 2
  %53 = load i8**, i8*** %52, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  store i8* %50, i8** %54, align 8
  %55 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %56 = load i32, i32* %12, align 4
  %57 = ashr i32 %56, 32
  %58 = call i8* @cpu_to_hc32(%struct.ehci_hcd* %55, i32 %57)
  %59 = load %struct.ehci_sitd*, %struct.ehci_sitd** %8, align 8
  %60 = getelementptr inbounds %struct.ehci_sitd, %struct.ehci_sitd* %59, i32 0, i32 1
  %61 = load i8**, i8*** %60, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 0
  store i8* %58, i8** %62, align 8
  %63 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %64 = load %struct.ehci_iso_packet*, %struct.ehci_iso_packet** %11, align 8
  %65 = getelementptr inbounds %struct.ehci_iso_packet, %struct.ehci_iso_packet* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @cpu_to_hc32(%struct.ehci_hcd* %63, i32 %66)
  %68 = load %struct.ehci_sitd*, %struct.ehci_sitd** %8, align 8
  %69 = getelementptr inbounds %struct.ehci_sitd, %struct.ehci_sitd* %68, i32 0, i32 2
  %70 = load i8**, i8*** %69, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 1
  store i8* %67, i8** %71, align 8
  %72 = load %struct.ehci_iso_packet*, %struct.ehci_iso_packet** %11, align 8
  %73 = getelementptr inbounds %struct.ehci_iso_packet, %struct.ehci_iso_packet* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %5
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 4096
  store i32 %78, i32* %12, align 4
  br label %79

79:                                               ; preds = %76, %5
  %80 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %81 = load i32, i32* %12, align 4
  %82 = ashr i32 %81, 32
  %83 = call i8* @cpu_to_hc32(%struct.ehci_hcd* %80, i32 %82)
  %84 = load %struct.ehci_sitd*, %struct.ehci_sitd** %8, align 8
  %85 = getelementptr inbounds %struct.ehci_sitd, %struct.ehci_sitd* %84, i32 0, i32 1
  %86 = load i8**, i8*** %85, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 1
  store i8* %83, i8** %87, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.ehci_sitd*, %struct.ehci_sitd** %8, align 8
  %90 = getelementptr inbounds %struct.ehci_sitd, %struct.ehci_sitd* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  ret void
}

declare dso_local i8* @EHCI_LIST_END(%struct.ehci_hcd*) #1

declare dso_local i8* @cpu_to_hc32(%struct.ehci_hcd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
