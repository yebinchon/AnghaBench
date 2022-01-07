; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_alloc_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_alloc_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_command = type { i32, i64, i8*, i32 }
%struct.xhci_hcd = type { i32 }

@XHCI_CTX_TYPE_INPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xhci_command* @xhci_alloc_command(%struct.xhci_hcd* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.xhci_command*, align 8
  %6 = alloca %struct.xhci_hcd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.xhci_command*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = call i8* @kzalloc(i32 32, i32 %11)
  %13 = bitcast i8* %12 to %struct.xhci_command*
  store %struct.xhci_command* %13, %struct.xhci_command** %10, align 8
  %14 = load %struct.xhci_command*, %struct.xhci_command** %10, align 8
  %15 = icmp ne %struct.xhci_command* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store %struct.xhci_command* null, %struct.xhci_command** %5, align 8
  br label %67

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %17
  %21 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %22 = load i32, i32* @XHCI_CTX_TYPE_INPUT, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @xhci_alloc_container_ctx(%struct.xhci_hcd* %21, i32 %22, i32 %23)
  %25 = load %struct.xhci_command*, %struct.xhci_command** %10, align 8
  %26 = getelementptr inbounds %struct.xhci_command, %struct.xhci_command* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load %struct.xhci_command*, %struct.xhci_command** %10, align 8
  %28 = getelementptr inbounds %struct.xhci_command, %struct.xhci_command* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %20
  %32 = load %struct.xhci_command*, %struct.xhci_command** %10, align 8
  %33 = call i32 @kfree(%struct.xhci_command* %32)
  store %struct.xhci_command* null, %struct.xhci_command** %5, align 8
  br label %67

34:                                               ; preds = %20
  br label %35

35:                                               ; preds = %34, %17
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  %40 = call i8* @kzalloc(i32 4, i32 %39)
  %41 = load %struct.xhci_command*, %struct.xhci_command** %10, align 8
  %42 = getelementptr inbounds %struct.xhci_command, %struct.xhci_command* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load %struct.xhci_command*, %struct.xhci_command** %10, align 8
  %44 = getelementptr inbounds %struct.xhci_command, %struct.xhci_command* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %55, label %47

47:                                               ; preds = %38
  %48 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %49 = load %struct.xhci_command*, %struct.xhci_command** %10, align 8
  %50 = getelementptr inbounds %struct.xhci_command, %struct.xhci_command* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @xhci_free_container_ctx(%struct.xhci_hcd* %48, i32 %51)
  %53 = load %struct.xhci_command*, %struct.xhci_command** %10, align 8
  %54 = call i32 @kfree(%struct.xhci_command* %53)
  store %struct.xhci_command* null, %struct.xhci_command** %5, align 8
  br label %67

55:                                               ; preds = %38
  %56 = load %struct.xhci_command*, %struct.xhci_command** %10, align 8
  %57 = getelementptr inbounds %struct.xhci_command, %struct.xhci_command* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @init_completion(i8* %58)
  br label %60

60:                                               ; preds = %55, %35
  %61 = load %struct.xhci_command*, %struct.xhci_command** %10, align 8
  %62 = getelementptr inbounds %struct.xhci_command, %struct.xhci_command* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  %63 = load %struct.xhci_command*, %struct.xhci_command** %10, align 8
  %64 = getelementptr inbounds %struct.xhci_command, %struct.xhci_command* %63, i32 0, i32 0
  %65 = call i32 @INIT_LIST_HEAD(i32* %64)
  %66 = load %struct.xhci_command*, %struct.xhci_command** %10, align 8
  store %struct.xhci_command* %66, %struct.xhci_command** %5, align 8
  br label %67

67:                                               ; preds = %60, %47, %31, %16
  %68 = load %struct.xhci_command*, %struct.xhci_command** %5, align 8
  ret %struct.xhci_command* %68
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @xhci_alloc_container_ctx(%struct.xhci_hcd*, i32, i32) #1

declare dso_local i32 @kfree(%struct.xhci_command*) #1

declare dso_local i32 @xhci_free_container_ctx(%struct.xhci_hcd*, i32) #1

declare dso_local i32 @init_completion(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
