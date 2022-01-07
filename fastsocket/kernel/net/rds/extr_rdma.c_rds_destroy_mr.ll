; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_rdma.c_rds_destroy_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_rdma.c_rds_destroy_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_mr = type { i32, %struct.TYPE_2__*, i32*, i32, i32, i32, i32, %struct.rds_sock* }
%struct.TYPE_2__ = type { i32 (i8*, i32)* }
%struct.rds_sock = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"RDS: destroy mr key is %x refcnt %u\0A\00", align 1
@RDS_MR_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rds_mr*)* @rds_destroy_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_destroy_mr(%struct.rds_mr* %0) #0 {
  %2 = alloca %struct.rds_mr*, align 8
  %3 = alloca %struct.rds_sock*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.rds_mr* %0, %struct.rds_mr** %2, align 8
  %6 = load %struct.rds_mr*, %struct.rds_mr** %2, align 8
  %7 = getelementptr inbounds %struct.rds_mr, %struct.rds_mr* %6, i32 0, i32 7
  %8 = load %struct.rds_sock*, %struct.rds_sock** %7, align 8
  store %struct.rds_sock* %8, %struct.rds_sock** %3, align 8
  store i8* null, i8** %4, align 8
  %9 = load %struct.rds_mr*, %struct.rds_mr** %2, align 8
  %10 = getelementptr inbounds %struct.rds_mr, %struct.rds_mr* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.rds_mr*, %struct.rds_mr** %2, align 8
  %13 = getelementptr inbounds %struct.rds_mr, %struct.rds_mr* %12, i32 0, i32 5
  %14 = call i32 @atomic_read(i32* %13)
  %15 = call i32 @rdsdebug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14)
  %16 = load i32, i32* @RDS_MR_DEAD, align 4
  %17 = load %struct.rds_mr*, %struct.rds_mr** %2, align 8
  %18 = getelementptr inbounds %struct.rds_mr, %struct.rds_mr* %17, i32 0, i32 4
  %19 = call i64 @test_and_set_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %61

22:                                               ; preds = %1
  %23 = load %struct.rds_sock*, %struct.rds_sock** %3, align 8
  %24 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %23, i32 0, i32 0
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.rds_mr*, %struct.rds_mr** %2, align 8
  %28 = getelementptr inbounds %struct.rds_mr, %struct.rds_mr* %27, i32 0, i32 3
  %29 = call i32 @RB_EMPTY_NODE(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %22
  %32 = load %struct.rds_mr*, %struct.rds_mr** %2, align 8
  %33 = getelementptr inbounds %struct.rds_mr, %struct.rds_mr* %32, i32 0, i32 3
  %34 = load %struct.rds_sock*, %struct.rds_sock** %3, align 8
  %35 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %34, i32 0, i32 1
  %36 = call i32 @rb_erase(i32* %33, i32* %35)
  br label %37

37:                                               ; preds = %31, %22
  %38 = load %struct.rds_mr*, %struct.rds_mr** %2, align 8
  %39 = getelementptr inbounds %struct.rds_mr, %struct.rds_mr* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = bitcast i32* %40 to i8*
  store i8* %41, i8** %4, align 8
  %42 = load %struct.rds_mr*, %struct.rds_mr** %2, align 8
  %43 = getelementptr inbounds %struct.rds_mr, %struct.rds_mr* %42, i32 0, i32 2
  store i32* null, i32** %43, align 8
  %44 = load %struct.rds_sock*, %struct.rds_sock** %3, align 8
  %45 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %44, i32 0, i32 0
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load i8*, i8** %4, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %37
  %51 = load %struct.rds_mr*, %struct.rds_mr** %2, align 8
  %52 = getelementptr inbounds %struct.rds_mr, %struct.rds_mr* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32 (i8*, i32)*, i32 (i8*, i32)** %54, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = load %struct.rds_mr*, %struct.rds_mr** %2, align 8
  %58 = getelementptr inbounds %struct.rds_mr, %struct.rds_mr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 %55(i8* %56, i32 %59)
  br label %61

61:                                               ; preds = %21, %50, %37
  ret void
}

declare dso_local i32 @rdsdebug(i8*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @RB_EMPTY_NODE(i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
