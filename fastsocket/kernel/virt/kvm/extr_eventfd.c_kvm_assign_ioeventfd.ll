; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_eventfd.c_kvm_assign_ioeventfd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_eventfd.c_kvm_assign_ioeventfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32, i32 }
%struct.kvm_ioeventfd = type { i32, i32, i64, i32, i32 }
%struct._ioeventfd = type { i64, i32, i32, i32, i32, i32, %struct.eventfd_ctx* }
%struct.eventfd_ctx = type { i32 }

@KVM_IOEVENTFD_FLAG_PIO = common dso_local global i32 0, align 4
@KVM_PIO_BUS = common dso_local global i32 0, align 4
@KVM_MMIO_BUS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KVM_IOEVENTFD_VALID_FLAG_MASK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KVM_IOEVENTFD_FLAG_DATAMATCH = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ioeventfd_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.kvm_ioeventfd*)* @kvm_assign_ioeventfd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_assign_ioeventfd(%struct.kvm* %0, %struct.kvm_ioeventfd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.kvm_ioeventfd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._ioeventfd*, align 8
  %9 = alloca %struct.eventfd_ctx*, align 8
  %10 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.kvm_ioeventfd* %1, %struct.kvm_ioeventfd** %5, align 8
  %11 = load %struct.kvm_ioeventfd*, %struct.kvm_ioeventfd** %5, align 8
  %12 = getelementptr inbounds %struct.kvm_ioeventfd, %struct.kvm_ioeventfd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @KVM_IOEVENTFD_FLAG_PIO, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @KVM_PIO_BUS, align 4
  br label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @KVM_MMIO_BUS, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %7, align 4
  %24 = load %struct.kvm_ioeventfd*, %struct.kvm_ioeventfd** %5, align 8
  %25 = getelementptr inbounds %struct.kvm_ioeventfd, %struct.kvm_ioeventfd* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %28 [
    i32 1, label %27
    i32 2, label %27
    i32 4, label %27
    i32 8, label %27
  ]

27:                                               ; preds = %22, %22, %22, %22
  br label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %151

31:                                               ; preds = %27
  %32 = load %struct.kvm_ioeventfd*, %struct.kvm_ioeventfd** %5, align 8
  %33 = getelementptr inbounds %struct.kvm_ioeventfd, %struct.kvm_ioeventfd* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.kvm_ioeventfd*, %struct.kvm_ioeventfd** %5, align 8
  %36 = getelementptr inbounds %struct.kvm_ioeventfd, %struct.kvm_ioeventfd* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %34, %38
  %40 = load %struct.kvm_ioeventfd*, %struct.kvm_ioeventfd** %5, align 8
  %41 = getelementptr inbounds %struct.kvm_ioeventfd, %struct.kvm_ioeventfd* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %31
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %151

47:                                               ; preds = %31
  %48 = load %struct.kvm_ioeventfd*, %struct.kvm_ioeventfd** %5, align 8
  %49 = getelementptr inbounds %struct.kvm_ioeventfd, %struct.kvm_ioeventfd* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @KVM_IOEVENTFD_VALID_FLAG_MASK, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %151

58:                                               ; preds = %47
  %59 = load %struct.kvm_ioeventfd*, %struct.kvm_ioeventfd** %5, align 8
  %60 = getelementptr inbounds %struct.kvm_ioeventfd, %struct.kvm_ioeventfd* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.eventfd_ctx* @eventfd_ctx_fdget(i32 %61)
  store %struct.eventfd_ctx* %62, %struct.eventfd_ctx** %9, align 8
  %63 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %9, align 8
  %64 = call i64 @IS_ERR(%struct.eventfd_ctx* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %9, align 8
  %68 = call i32 @PTR_ERR(%struct.eventfd_ctx* %67)
  store i32 %68, i32* %3, align 4
  br label %151

69:                                               ; preds = %58
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call %struct._ioeventfd* @kzalloc(i32 40, i32 %70)
  store %struct._ioeventfd* %71, %struct._ioeventfd** %8, align 8
  %72 = load %struct._ioeventfd*, %struct._ioeventfd** %8, align 8
  %73 = icmp ne %struct._ioeventfd* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %10, align 4
  br label %145

77:                                               ; preds = %69
  %78 = load %struct._ioeventfd*, %struct._ioeventfd** %8, align 8
  %79 = getelementptr inbounds %struct._ioeventfd, %struct._ioeventfd* %78, i32 0, i32 3
  %80 = call i32 @INIT_LIST_HEAD(i32* %79)
  %81 = load %struct.kvm_ioeventfd*, %struct.kvm_ioeventfd** %5, align 8
  %82 = getelementptr inbounds %struct.kvm_ioeventfd, %struct.kvm_ioeventfd* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct._ioeventfd*, %struct._ioeventfd** %8, align 8
  %85 = getelementptr inbounds %struct._ioeventfd, %struct._ioeventfd* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.kvm_ioeventfd*, %struct.kvm_ioeventfd** %5, align 8
  %87 = getelementptr inbounds %struct.kvm_ioeventfd, %struct.kvm_ioeventfd* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct._ioeventfd*, %struct._ioeventfd** %8, align 8
  %90 = getelementptr inbounds %struct._ioeventfd, %struct._ioeventfd* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  %91 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %9, align 8
  %92 = load %struct._ioeventfd*, %struct._ioeventfd** %8, align 8
  %93 = getelementptr inbounds %struct._ioeventfd, %struct._ioeventfd* %92, i32 0, i32 6
  store %struct.eventfd_ctx* %91, %struct.eventfd_ctx** %93, align 8
  %94 = load %struct.kvm_ioeventfd*, %struct.kvm_ioeventfd** %5, align 8
  %95 = getelementptr inbounds %struct.kvm_ioeventfd, %struct.kvm_ioeventfd* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @KVM_IOEVENTFD_FLAG_DATAMATCH, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %77
  %101 = load %struct.kvm_ioeventfd*, %struct.kvm_ioeventfd** %5, align 8
  %102 = getelementptr inbounds %struct.kvm_ioeventfd, %struct.kvm_ioeventfd* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = load %struct._ioeventfd*, %struct._ioeventfd** %8, align 8
  %105 = getelementptr inbounds %struct._ioeventfd, %struct._ioeventfd* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 8
  br label %109

106:                                              ; preds = %77
  %107 = load %struct._ioeventfd*, %struct._ioeventfd** %8, align 8
  %108 = getelementptr inbounds %struct._ioeventfd, %struct._ioeventfd* %107, i32 0, i32 2
  store i32 1, i32* %108, align 4
  br label %109

109:                                              ; preds = %106, %100
  %110 = load %struct.kvm*, %struct.kvm** %4, align 8
  %111 = getelementptr inbounds %struct.kvm, %struct.kvm* %110, i32 0, i32 0
  %112 = call i32 @mutex_lock(i32* %111)
  %113 = load %struct.kvm*, %struct.kvm** %4, align 8
  %114 = load %struct._ioeventfd*, %struct._ioeventfd** %8, align 8
  %115 = call i64 @ioeventfd_check_collision(%struct.kvm* %113, %struct._ioeventfd* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %109
  %118 = load i32, i32* @EEXIST, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %10, align 4
  br label %141

120:                                              ; preds = %109
  %121 = load %struct._ioeventfd*, %struct._ioeventfd** %8, align 8
  %122 = getelementptr inbounds %struct._ioeventfd, %struct._ioeventfd* %121, i32 0, i32 4
  %123 = call i32 @kvm_iodevice_init(i32* %122, i32* @ioeventfd_ops)
  %124 = load %struct.kvm*, %struct.kvm** %4, align 8
  %125 = load i32, i32* %7, align 4
  %126 = load %struct._ioeventfd*, %struct._ioeventfd** %8, align 8
  %127 = getelementptr inbounds %struct._ioeventfd, %struct._ioeventfd* %126, i32 0, i32 4
  %128 = call i32 @kvm_io_bus_register_dev(%struct.kvm* %124, i32 %125, i32* %127)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %120
  br label %141

132:                                              ; preds = %120
  %133 = load %struct._ioeventfd*, %struct._ioeventfd** %8, align 8
  %134 = getelementptr inbounds %struct._ioeventfd, %struct._ioeventfd* %133, i32 0, i32 3
  %135 = load %struct.kvm*, %struct.kvm** %4, align 8
  %136 = getelementptr inbounds %struct.kvm, %struct.kvm* %135, i32 0, i32 1
  %137 = call i32 @list_add_tail(i32* %134, i32* %136)
  %138 = load %struct.kvm*, %struct.kvm** %4, align 8
  %139 = getelementptr inbounds %struct.kvm, %struct.kvm* %138, i32 0, i32 0
  %140 = call i32 @mutex_unlock(i32* %139)
  store i32 0, i32* %3, align 4
  br label %151

141:                                              ; preds = %131, %117
  %142 = load %struct.kvm*, %struct.kvm** %4, align 8
  %143 = getelementptr inbounds %struct.kvm, %struct.kvm* %142, i32 0, i32 0
  %144 = call i32 @mutex_unlock(i32* %143)
  br label %145

145:                                              ; preds = %141, %74
  %146 = load %struct._ioeventfd*, %struct._ioeventfd** %8, align 8
  %147 = call i32 @kfree(%struct._ioeventfd* %146)
  %148 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %9, align 8
  %149 = call i32 @eventfd_ctx_put(%struct.eventfd_ctx* %148)
  %150 = load i32, i32* %10, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %145, %132, %66, %55, %44, %28
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local %struct.eventfd_ctx* @eventfd_ctx_fdget(i32) #1

declare dso_local i64 @IS_ERR(%struct.eventfd_ctx*) #1

declare dso_local i32 @PTR_ERR(%struct.eventfd_ctx*) #1

declare dso_local %struct._ioeventfd* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @ioeventfd_check_collision(%struct.kvm*, %struct._ioeventfd*) #1

declare dso_local i32 @kvm_iodevice_init(i32*, i32*) #1

declare dso_local i32 @kvm_io_bus_register_dev(%struct.kvm*, i32, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct._ioeventfd*) #1

declare dso_local i32 @eventfd_ctx_put(%struct.eventfd_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
