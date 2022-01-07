; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_send.c_rds_send_queue_rm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_send.c_rds_send_queue_rm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_sock = type { i32, i32, i32 }
%struct.rds_connection = type { i32, i32, i32 }
%struct.rds_message = type { %struct.TYPE_3__, i32, i32, %struct.rds_sock*, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__, %struct.rds_connection* }
%struct.TYPE_4__ = type { i32, i32 }

@RDS_MSG_ACK_REQUIRED = common dso_local global i32 0, align 4
@RDS_MSG_ON_SOCK = common dso_local global i32 0, align 4
@RDS_MSG_ON_CONN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"queued msg %p len %d, rs %p bytes %d seq %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rds_sock*, %struct.rds_connection*, %struct.rds_message*, i32, i32, i32*)* @rds_send_queue_rm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rds_send_queue_rm(%struct.rds_sock* %0, %struct.rds_connection* %1, %struct.rds_message* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.rds_sock*, align 8
  %8 = alloca %struct.rds_connection*, align 8
  %9 = alloca %struct.rds_message*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.rds_sock* %0, %struct.rds_sock** %7, align 8
  store %struct.rds_connection* %1, %struct.rds_connection** %8, align 8
  store %struct.rds_message* %2, %struct.rds_message** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %15 = load i32*, i32** %12, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  br label %124

19:                                               ; preds = %6
  %20 = load %struct.rds_message*, %struct.rds_message** %9, align 8
  %21 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @be32_to_cpu(i32 %24)
  store i32 %25, i32* %14, align 4
  %26 = load %struct.rds_sock*, %struct.rds_sock** %7, align 8
  %27 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %26, i32 0, i32 1
  %28 = load i64, i64* %13, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.rds_sock*, %struct.rds_sock** %7, align 8
  %31 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.rds_sock*, %struct.rds_sock** %7, align 8
  %34 = call i32 @rds_sk_sndbuf(%struct.rds_sock* %33)
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %119

36:                                               ; preds = %19
  %37 = load i32, i32* %14, align 4
  %38 = load %struct.rds_sock*, %struct.rds_sock** %7, align 8
  %39 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.rds_sock*, %struct.rds_sock** %7, align 8
  %43 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.rds_sock*, %struct.rds_sock** %7, align 8
  %46 = call i32 @rds_sk_sndbuf(%struct.rds_sock* %45)
  %47 = sdiv i32 %46, 2
  %48 = icmp sge i32 %44, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %36
  %50 = load i32, i32* @RDS_MSG_ACK_REQUIRED, align 4
  %51 = load %struct.rds_message*, %struct.rds_message** %9, align 8
  %52 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %51, i32 0, i32 1
  %53 = call i32 @__set_bit(i32 %50, i32* %52)
  br label %54

54:                                               ; preds = %49, %36
  %55 = load %struct.rds_message*, %struct.rds_message** %9, align 8
  %56 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %55, i32 0, i32 4
  %57 = load %struct.rds_sock*, %struct.rds_sock** %7, align 8
  %58 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %57, i32 0, i32 2
  %59 = call i32 @list_add_tail(i32* %56, i32* %58)
  %60 = load i32, i32* @RDS_MSG_ON_SOCK, align 4
  %61 = load %struct.rds_message*, %struct.rds_message** %9, align 8
  %62 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %61, i32 0, i32 1
  %63 = call i32 @set_bit(i32 %60, i32* %62)
  %64 = load %struct.rds_message*, %struct.rds_message** %9, align 8
  %65 = call i32 @rds_message_addref(%struct.rds_message* %64)
  %66 = load %struct.rds_sock*, %struct.rds_sock** %7, align 8
  %67 = load %struct.rds_message*, %struct.rds_message** %9, align 8
  %68 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %67, i32 0, i32 3
  store %struct.rds_sock* %66, %struct.rds_sock** %68, align 8
  %69 = load %struct.rds_message*, %struct.rds_message** %9, align 8
  %70 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @rds_message_populate_header(%struct.TYPE_4__* %71, i32 %72, i32 %73, i32 0)
  %75 = load %struct.rds_connection*, %struct.rds_connection** %8, align 8
  %76 = load %struct.rds_message*, %struct.rds_message** %9, align 8
  %77 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  store %struct.rds_connection* %75, %struct.rds_connection** %78, align 8
  %79 = load %struct.rds_message*, %struct.rds_message** %9, align 8
  %80 = call i32 @rds_message_addref(%struct.rds_message* %79)
  %81 = load %struct.rds_connection*, %struct.rds_connection** %8, align 8
  %82 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %81, i32 0, i32 0
  %83 = call i32 @spin_lock(i32* %82)
  %84 = load %struct.rds_connection*, %struct.rds_connection** %8, align 8
  %85 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  %88 = call i32 @cpu_to_be64(i32 %86)
  %89 = load %struct.rds_message*, %struct.rds_message** %9, align 8
  %90 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i32 %88, i32* %92, align 8
  %93 = load %struct.rds_message*, %struct.rds_message** %9, align 8
  %94 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %93, i32 0, i32 2
  %95 = load %struct.rds_connection*, %struct.rds_connection** %8, align 8
  %96 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %95, i32 0, i32 1
  %97 = call i32 @list_add_tail(i32* %94, i32* %96)
  %98 = load i32, i32* @RDS_MSG_ON_CONN, align 4
  %99 = load %struct.rds_message*, %struct.rds_message** %9, align 8
  %100 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %99, i32 0, i32 1
  %101 = call i32 @set_bit(i32 %98, i32* %100)
  %102 = load %struct.rds_connection*, %struct.rds_connection** %8, align 8
  %103 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %102, i32 0, i32 0
  %104 = call i32 @spin_unlock(i32* %103)
  %105 = load %struct.rds_message*, %struct.rds_message** %9, align 8
  %106 = load i32, i32* %14, align 4
  %107 = load %struct.rds_sock*, %struct.rds_sock** %7, align 8
  %108 = load %struct.rds_sock*, %struct.rds_sock** %7, align 8
  %109 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.rds_message*, %struct.rds_message** %9, align 8
  %112 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i64 @be64_to_cpu(i32 %115)
  %117 = call i32 @rdsdebug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), %struct.rds_message* %105, i32 %106, %struct.rds_sock* %107, i32 %110, i64 %116)
  %118 = load i32*, i32** %12, align 8
  store i32 1, i32* %118, align 4
  br label %119

119:                                              ; preds = %54, %19
  %120 = load %struct.rds_sock*, %struct.rds_sock** %7, align 8
  %121 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %120, i32 0, i32 1
  %122 = load i64, i64* %13, align 8
  %123 = call i32 @spin_unlock_irqrestore(i32* %121, i64 %122)
  br label %124

124:                                              ; preds = %119, %18
  %125 = load i32*, i32** %12, align 8
  %126 = load i32, i32* %125, align 4
  ret i32 %126
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rds_sk_sndbuf(%struct.rds_sock*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rds_message_addref(%struct.rds_message*) #1

declare dso_local i32 @rds_message_populate_header(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rdsdebug(i8*, %struct.rds_message*, i32, %struct.rds_sock*, i32, i64) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
