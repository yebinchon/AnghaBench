; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_sticore.c_sti_inq_conf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_sticore.c_sti_inq_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_struct = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sti_conf_inptr = type { i32 }

@default_conf_flags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sti_struct*)* @sti_inq_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sti_inq_conf(%struct.sti_struct* %0) #0 {
  %2 = alloca %struct.sti_struct*, align 8
  %3 = alloca %struct.sti_conf_inptr, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.sti_struct* %0, %struct.sti_struct** %2, align 8
  %6 = bitcast %struct.sti_conf_inptr* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 4, i1 false)
  %7 = load %struct.sti_struct*, %struct.sti_struct** %2, align 8
  %8 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %7, i32 0, i32 4
  %9 = call i32 @STI_PTR(i32* %8)
  %10 = load %struct.sti_struct*, %struct.sti_struct** %2, align 8
  %11 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 4
  br label %13

13:                                               ; preds = %31, %1
  %14 = load %struct.sti_struct*, %struct.sti_struct** %2, align 8
  %15 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %14, i32 0, i32 0
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.sti_struct*, %struct.sti_struct** %2, align 8
  %19 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sti_struct*, %struct.sti_struct** %2, align 8
  %22 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %21, i32 0, i32 2
  %23 = load %struct.sti_struct*, %struct.sti_struct** %2, align 8
  %24 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @STI_CALL(i32 %20, i32* @default_conf_flags, %struct.sti_conf_inptr* %3, %struct.TYPE_2__* %22, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.sti_struct*, %struct.sti_struct** %2, align 8
  %28 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %27, i32 0, i32 0
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  br label %31

31:                                               ; preds = %13
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %13, label %34

34:                                               ; preds = %31
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @STI_PTR(i32*) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @STI_CALL(i32, i32*, %struct.sti_conf_inptr*, %struct.TYPE_2__*, i32) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
