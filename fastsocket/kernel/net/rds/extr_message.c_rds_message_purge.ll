; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_message.c_rds_message_purge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_message.c_rds_message_purge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_message = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i32* }

@RDS_MSG_PAGEVEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"putting data page %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rds_message*)* @rds_message_purge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_message_purge(%struct.rds_message* %0) #0 {
  %2 = alloca %struct.rds_message*, align 8
  %3 = alloca i64, align 8
  store %struct.rds_message* %0, %struct.rds_message** %2, align 8
  %4 = load i32, i32* @RDS_MSG_PAGEVEC, align 4
  %5 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %6 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %5, i32 0, i32 3
  %7 = call i32 @test_bit(i32 %4, i32* %6)
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %87

11:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %12

12:                                               ; preds = %37, %11
  %13 = load i64, i64* %3, align 8
  %14 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %15 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %13, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %12
  %20 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %21 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = call i64 @sg_page(i32* %25)
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @rdsdebug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %30 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %3, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = call i64 @sg_page(i32* %34)
  %36 = call i32 @__free_page(i64 %35)
  br label %37

37:                                               ; preds = %19
  %38 = load i64, i64* %3, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %3, align 8
  br label %12

40:                                               ; preds = %12
  %41 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %42 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %45 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %51 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %50, i32 0, i32 1
  %52 = call i32 @rds_rdma_free_op(%struct.TYPE_5__* %51)
  br label %53

53:                                               ; preds = %49, %40
  %54 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %55 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %61 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @rds_mr_put(i64 %63)
  br label %65

65:                                               ; preds = %59, %53
  %66 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %67 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %73 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %72, i32 0, i32 0
  %74 = call i32 @rds_atomic_free_op(%struct.TYPE_6__* %73)
  br label %75

75:                                               ; preds = %71, %65
  %76 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %77 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %83 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @rds_mr_put(i64 %85)
  br label %87

87:                                               ; preds = %10, %81, %75
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @rdsdebug(i8*, i8*) #1

declare dso_local i64 @sg_page(i32*) #1

declare dso_local i32 @__free_page(i64) #1

declare dso_local i32 @rds_rdma_free_op(%struct.TYPE_5__*) #1

declare dso_local i32 @rds_mr_put(i64) #1

declare dso_local i32 @rds_atomic_free_op(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
