; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctsrc.c_srcimp_imap_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctsrc.c_srcimp_imap_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srcimp_mgr = type { i32, i32, i64, i32 }
%struct.imapper = type { i64 }

@srcimp_map_op = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srcimp_mgr*, %struct.imapper*)* @srcimp_imap_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srcimp_imap_add(%struct.srcimp_mgr* %0, %struct.imapper* %1) #0 {
  %3 = alloca %struct.srcimp_mgr*, align 8
  %4 = alloca %struct.imapper*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.srcimp_mgr* %0, %struct.srcimp_mgr** %3, align 8
  store %struct.imapper* %1, %struct.imapper** %4, align 8
  %7 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %3, align 8
  %8 = getelementptr inbounds %struct.srcimp_mgr, %struct.srcimp_mgr* %7, i32 0, i32 0
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.imapper*, %struct.imapper** %4, align 8
  %12 = getelementptr inbounds %struct.imapper, %struct.imapper* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 0, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %3, align 8
  %17 = getelementptr inbounds %struct.srcimp_mgr, %struct.srcimp_mgr* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %3, align 8
  %22 = getelementptr inbounds %struct.srcimp_mgr, %struct.srcimp_mgr* %21, i32 0, i32 1
  %23 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %3, align 8
  %24 = getelementptr inbounds %struct.srcimp_mgr, %struct.srcimp_mgr* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @srcimp_map_op, align 4
  %27 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %3, align 8
  %28 = call i32 @input_mapper_delete(i32* %22, i32 %25, i32 %26, %struct.srcimp_mgr* %27)
  %29 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %3, align 8
  %30 = getelementptr inbounds %struct.srcimp_mgr, %struct.srcimp_mgr* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %20, %15, %2
  %32 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %3, align 8
  %33 = getelementptr inbounds %struct.srcimp_mgr, %struct.srcimp_mgr* %32, i32 0, i32 1
  %34 = load %struct.imapper*, %struct.imapper** %4, align 8
  %35 = load i32, i32* @srcimp_map_op, align 4
  %36 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %3, align 8
  %37 = call i32 @input_mapper_add(i32* %33, %struct.imapper* %34, i32 %35, %struct.srcimp_mgr* %36)
  store i32 %37, i32* %6, align 4
  %38 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %3, align 8
  %39 = getelementptr inbounds %struct.srcimp_mgr, %struct.srcimp_mgr* %38, i32 0, i32 0
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @input_mapper_delete(i32*, i32, i32, %struct.srcimp_mgr*) #1

declare dso_local i32 @input_mapper_add(i32*, %struct.imapper*, i32, %struct.srcimp_mgr*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
