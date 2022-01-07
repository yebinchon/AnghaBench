; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_dcache.c_d_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_dcache.c_d_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.qstr = type { i32 }

@rename_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @d_lookup(%struct.dentry* %0, %struct.qstr* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.qstr*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i64, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.qstr* %1, %struct.qstr** %4, align 8
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %7

7:                                                ; preds = %16, %2
  %8 = call i64 @read_seqbegin(i32* @rename_lock)
  store i64 %8, i64* %6, align 8
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = load %struct.qstr*, %struct.qstr** %4, align 8
  %11 = call %struct.dentry* @__d_lookup(%struct.dentry* %9, %struct.qstr* %10)
  store %struct.dentry* %11, %struct.dentry** %5, align 8
  %12 = load %struct.dentry*, %struct.dentry** %5, align 8
  %13 = icmp ne %struct.dentry* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  br label %20

15:                                               ; preds = %7
  br label %16

16:                                               ; preds = %15
  %17 = load i64, i64* %6, align 8
  %18 = call i64 @read_seqretry(i32* @rename_lock, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %7, label %20

20:                                               ; preds = %16, %14
  %21 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %21
}

declare dso_local i64 @read_seqbegin(i32*) #1

declare dso_local %struct.dentry* @__d_lookup(%struct.dentry*, %struct.qstr*) #1

declare dso_local i64 @read_seqretry(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
