; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_irq_comm.c_kvm_set_irq_routing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_irq_comm.c_kvm_set_irq_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32, %struct.kvm_irq_routing_table* }
%struct.kvm_irq_routing_table = type { i32, i32**, i32*, i32* }
%struct.kvm_irq_routing_entry = type { i64, i64 }

@KVM_MAX_IRQ_ROUTES = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KVM_IOAPIC_NUM_PINS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_set_irq_routing(%struct.kvm* %0, %struct.kvm_irq_routing_entry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm*, align 8
  %7 = alloca %struct.kvm_irq_routing_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.kvm_irq_routing_table*, align 8
  %11 = alloca %struct.kvm_irq_routing_table*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %6, align 8
  store %struct.kvm_irq_routing_entry* %1, %struct.kvm_irq_routing_entry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %41, %4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %16
  %21 = load %struct.kvm_irq_routing_entry*, %struct.kvm_irq_routing_entry** %7, align 8
  %22 = load i32, i32* %12, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.kvm_irq_routing_entry, %struct.kvm_irq_routing_entry* %21, i64 %23
  %25 = getelementptr inbounds %struct.kvm_irq_routing_entry, %struct.kvm_irq_routing_entry* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @KVM_MAX_IRQ_ROUTES, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %154

32:                                               ; preds = %20
  %33 = load i32, i32* %14, align 4
  %34 = load %struct.kvm_irq_routing_entry*, %struct.kvm_irq_routing_entry** %7, align 8
  %35 = load i32, i32* %12, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.kvm_irq_routing_entry, %struct.kvm_irq_routing_entry* %34, i64 %36
  %38 = getelementptr inbounds %struct.kvm_irq_routing_entry, %struct.kvm_irq_routing_entry* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @max(i32 %33, i64 %39)
  store i32 %40, i32* %14, align 4
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %12, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %12, align 4
  br label %16

44:                                               ; preds = %16
  %45 = load i32, i32* %14, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = zext i32 %47 to i64
  %49 = mul i64 %48, 4
  %50 = add i64 32, %49
  %51 = load i32, i32* %8, align 4
  %52 = zext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = add i64 %50, %53
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call %struct.kvm_irq_routing_table* @kzalloc(i32 %55, i32 %56)
  store %struct.kvm_irq_routing_table* %57, %struct.kvm_irq_routing_table** %10, align 8
  %58 = load %struct.kvm_irq_routing_table*, %struct.kvm_irq_routing_table** %10, align 8
  %59 = icmp ne %struct.kvm_irq_routing_table* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %44
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %154

63:                                               ; preds = %44
  %64 = load %struct.kvm_irq_routing_table*, %struct.kvm_irq_routing_table** %10, align 8
  %65 = getelementptr inbounds %struct.kvm_irq_routing_table, %struct.kvm_irq_routing_table* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %14, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = bitcast i32* %69 to i8*
  %71 = bitcast i8* %70 to i32*
  %72 = load %struct.kvm_irq_routing_table*, %struct.kvm_irq_routing_table** %10, align 8
  %73 = getelementptr inbounds %struct.kvm_irq_routing_table, %struct.kvm_irq_routing_table* %72, i32 0, i32 2
  store i32* %71, i32** %73, align 8
  %74 = load i32, i32* %14, align 4
  %75 = load %struct.kvm_irq_routing_table*, %struct.kvm_irq_routing_table** %10, align 8
  %76 = getelementptr inbounds %struct.kvm_irq_routing_table, %struct.kvm_irq_routing_table* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  store i32 0, i32* %12, align 4
  br label %77

77:                                               ; preds = %100, %63
  %78 = load i32, i32* %12, align 4
  %79 = icmp ult i32 %78, 3
  br i1 %79, label %80, label %103

80:                                               ; preds = %77
  store i32 0, i32* %13, align 4
  br label %81

81:                                               ; preds = %96, %80
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @KVM_IOAPIC_NUM_PINS, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %81
  %86 = load %struct.kvm_irq_routing_table*, %struct.kvm_irq_routing_table** %10, align 8
  %87 = getelementptr inbounds %struct.kvm_irq_routing_table, %struct.kvm_irq_routing_table* %86, i32 0, i32 1
  %88 = load i32**, i32*** %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32*, i32** %88, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %13, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 -1, i32* %95, align 4
  br label %96

96:                                               ; preds = %85
  %97 = load i32, i32* %13, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %13, align 4
  br label %81

99:                                               ; preds = %81
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %12, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %12, align 4
  br label %77

103:                                              ; preds = %77
  store i32 0, i32* %12, align 4
  br label %104

104:                                              ; preds = %132, %103
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ult i32 %105, %106
  br i1 %107, label %108, label %135

108:                                              ; preds = %104
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %15, align 4
  %111 = load %struct.kvm_irq_routing_entry*, %struct.kvm_irq_routing_entry** %7, align 8
  %112 = getelementptr inbounds %struct.kvm_irq_routing_entry, %struct.kvm_irq_routing_entry* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  br label %150

116:                                              ; preds = %108
  %117 = load %struct.kvm_irq_routing_table*, %struct.kvm_irq_routing_table** %10, align 8
  %118 = load %struct.kvm_irq_routing_table*, %struct.kvm_irq_routing_table** %10, align 8
  %119 = getelementptr inbounds %struct.kvm_irq_routing_table, %struct.kvm_irq_routing_table* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %12, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load %struct.kvm_irq_routing_entry*, %struct.kvm_irq_routing_entry** %7, align 8
  %125 = call i32 @setup_routing_entry(%struct.kvm_irq_routing_table* %117, i32* %123, %struct.kvm_irq_routing_entry* %124)
  store i32 %125, i32* %15, align 4
  %126 = load i32, i32* %15, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %116
  br label %150

129:                                              ; preds = %116
  %130 = load %struct.kvm_irq_routing_entry*, %struct.kvm_irq_routing_entry** %7, align 8
  %131 = getelementptr inbounds %struct.kvm_irq_routing_entry, %struct.kvm_irq_routing_entry* %130, i32 1
  store %struct.kvm_irq_routing_entry* %131, %struct.kvm_irq_routing_entry** %7, align 8
  br label %132

132:                                              ; preds = %129
  %133 = load i32, i32* %12, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %12, align 4
  br label %104

135:                                              ; preds = %104
  %136 = load %struct.kvm*, %struct.kvm** %6, align 8
  %137 = getelementptr inbounds %struct.kvm, %struct.kvm* %136, i32 0, i32 0
  %138 = call i32 @mutex_lock(i32* %137)
  %139 = load %struct.kvm*, %struct.kvm** %6, align 8
  %140 = getelementptr inbounds %struct.kvm, %struct.kvm* %139, i32 0, i32 1
  %141 = load %struct.kvm_irq_routing_table*, %struct.kvm_irq_routing_table** %140, align 8
  store %struct.kvm_irq_routing_table* %141, %struct.kvm_irq_routing_table** %11, align 8
  %142 = load %struct.kvm*, %struct.kvm** %6, align 8
  %143 = load %struct.kvm_irq_routing_table*, %struct.kvm_irq_routing_table** %10, align 8
  %144 = call i32 @kvm_irq_routing_update(%struct.kvm* %142, %struct.kvm_irq_routing_table* %143)
  %145 = load %struct.kvm*, %struct.kvm** %6, align 8
  %146 = getelementptr inbounds %struct.kvm, %struct.kvm* %145, i32 0, i32 0
  %147 = call i32 @mutex_unlock(i32* %146)
  %148 = call i32 (...) @synchronize_rcu()
  %149 = load %struct.kvm_irq_routing_table*, %struct.kvm_irq_routing_table** %11, align 8
  store %struct.kvm_irq_routing_table* %149, %struct.kvm_irq_routing_table** %10, align 8
  store i32 0, i32* %15, align 4
  br label %150

150:                                              ; preds = %135, %128, %115
  %151 = load %struct.kvm_irq_routing_table*, %struct.kvm_irq_routing_table** %10, align 8
  %152 = call i32 @kfree(%struct.kvm_irq_routing_table* %151)
  %153 = load i32, i32* %15, align 4
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %150, %60, %29
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i32 @max(i32, i64) #1

declare dso_local %struct.kvm_irq_routing_table* @kzalloc(i32, i32) #1

declare dso_local i32 @setup_routing_entry(%struct.kvm_irq_routing_table*, i32*, %struct.kvm_irq_routing_entry*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kvm_irq_routing_update(%struct.kvm*, %struct.kvm_irq_routing_table*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @kfree(%struct.kvm_irq_routing_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
