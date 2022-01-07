; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_message.c_rds_message_add_rdma_dest_extension.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_message.c_rds_message_add_rdma_dest_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_header = type { i32 }
%struct.rds_ext_header_rdma_dest = type { i8*, i8* }

@RDS_EXTHDR_RDMA_DEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rds_message_add_rdma_dest_extension(%struct.rds_header* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rds_header*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rds_ext_header_rdma_dest, align 8
  store %struct.rds_header* %0, %struct.rds_header** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i8* @cpu_to_be32(i32 %8)
  %10 = getelementptr inbounds %struct.rds_ext_header_rdma_dest, %struct.rds_ext_header_rdma_dest* %7, i32 0, i32 1
  store i8* %9, i8** %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i8* @cpu_to_be32(i32 %11)
  %13 = getelementptr inbounds %struct.rds_ext_header_rdma_dest, %struct.rds_ext_header_rdma_dest* %7, i32 0, i32 0
  store i8* %12, i8** %13, align 8
  %14 = load %struct.rds_header*, %struct.rds_header** %4, align 8
  %15 = load i32, i32* @RDS_EXTHDR_RDMA_DEST, align 4
  %16 = call i32 @rds_message_add_extension(%struct.rds_header* %14, i32 %15, %struct.rds_ext_header_rdma_dest* %7, i32 16)
  ret i32 %16
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @rds_message_add_extension(%struct.rds_header*, i32, %struct.rds_ext_header_rdma_dest*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
