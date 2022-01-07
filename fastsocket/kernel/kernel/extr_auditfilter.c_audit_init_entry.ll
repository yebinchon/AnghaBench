; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditfilter.c_audit_init_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditfilter.c_audit_init_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.audit_field* }
%struct.audit_field = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.audit_entry* (i32)* @audit_init_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.audit_entry* @audit_init_entry(i32 %0) #0 {
  %2 = alloca %struct.audit_entry*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.audit_entry*, align 8
  %5 = alloca %struct.audit_field*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i8* @kzalloc(i32 8, i32 %6)
  %8 = bitcast i8* %7 to %struct.audit_entry*
  store %struct.audit_entry* %8, %struct.audit_entry** %4, align 8
  %9 = load %struct.audit_entry*, %struct.audit_entry** %4, align 8
  %10 = icmp ne %struct.audit_entry* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store %struct.audit_entry* null, %struct.audit_entry** %2, align 8
  br label %39

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 4, %18
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @kzalloc(i32 %20, i32 %21)
  %23 = bitcast i8* %22 to %struct.audit_field*
  store %struct.audit_field* %23, %struct.audit_field** %5, align 8
  %24 = load %struct.audit_field*, %struct.audit_field** %5, align 8
  %25 = icmp ne %struct.audit_field* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %16
  %31 = load %struct.audit_entry*, %struct.audit_entry** %4, align 8
  %32 = call i32 @kfree(%struct.audit_entry* %31)
  store %struct.audit_entry* null, %struct.audit_entry** %2, align 8
  br label %39

33:                                               ; preds = %16
  %34 = load %struct.audit_field*, %struct.audit_field** %5, align 8
  %35 = load %struct.audit_entry*, %struct.audit_entry** %4, align 8
  %36 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store %struct.audit_field* %34, %struct.audit_field** %37, align 8
  %38 = load %struct.audit_entry*, %struct.audit_entry** %4, align 8
  store %struct.audit_entry* %38, %struct.audit_entry** %2, align 8
  br label %39

39:                                               ; preds = %33, %30, %15
  %40 = load %struct.audit_entry*, %struct.audit_entry** %2, align 8
  ret %struct.audit_entry* %40
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree(%struct.audit_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
