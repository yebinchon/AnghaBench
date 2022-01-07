; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_super.c_udf_load_fileset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_super.c_udf_load_fileset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i64 }
%struct.kernel_lb_addr = type { i32, i32 }
%struct.fileSetDesc = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Rootdir at block=%d, partition=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.buffer_head*, %struct.kernel_lb_addr*)* @udf_load_fileset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udf_load_fileset(%struct.super_block* %0, %struct.buffer_head* %1, %struct.kernel_lb_addr* %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.kernel_lb_addr*, align 8
  %7 = alloca %struct.fileSetDesc*, align 8
  %8 = alloca %struct.kernel_lb_addr, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  store %struct.kernel_lb_addr* %2, %struct.kernel_lb_addr** %6, align 8
  %9 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %10 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.fileSetDesc*
  store %struct.fileSetDesc* %12, %struct.fileSetDesc** %7, align 8
  %13 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %6, align 8
  %14 = load %struct.fileSetDesc*, %struct.fileSetDesc** %7, align 8
  %15 = getelementptr inbounds %struct.fileSetDesc, %struct.fileSetDesc* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @lelb_to_cpu(i32 %17)
  %19 = bitcast %struct.kernel_lb_addr* %8 to i64*
  store i64 %18, i64* %19, align 4
  %20 = bitcast %struct.kernel_lb_addr* %13 to i8*
  %21 = bitcast %struct.kernel_lb_addr* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 8, i1 false)
  %22 = load %struct.fileSetDesc*, %struct.fileSetDesc** %7, align 8
  %23 = getelementptr inbounds %struct.fileSetDesc, %struct.fileSetDesc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le16_to_cpu(i32 %25)
  %27 = load %struct.super_block*, %struct.super_block** %4, align 8
  %28 = call %struct.TYPE_6__* @UDF_SB(%struct.super_block* %27)
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %6, align 8
  %31 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %6, align 8
  %34 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @udf_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35)
  ret void
}

declare dso_local i64 @lelb_to_cpu(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.TYPE_6__* @UDF_SB(%struct.super_block*) #1

declare dso_local i32 @udf_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
