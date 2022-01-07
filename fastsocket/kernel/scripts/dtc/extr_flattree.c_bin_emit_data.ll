; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/extr_flattree.c_bin_emit_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/extr_flattree.c_bin_emit_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @bin_emit_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bin_emit_data(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.data, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.data*, align 8
  %6 = alloca %struct.data, align 4
  %7 = bitcast %struct.data* %3 to i64*
  store i64 %1, i64* %7, align 4
  store i8* %0, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.data*
  store %struct.data* %9, %struct.data** %5, align 8
  %10 = load %struct.data*, %struct.data** %5, align 8
  %11 = load %struct.data*, %struct.data** %5, align 8
  %12 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = bitcast %struct.data* %11 to i64*
  %17 = load i64, i64* %16, align 4
  %18 = call i64 @data_append_data(i64 %17, i32 %13, i32 %15)
  %19 = bitcast %struct.data* %6 to i64*
  store i64 %18, i64* %19, align 4
  %20 = bitcast %struct.data* %10 to i8*
  %21 = bitcast %struct.data* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 8, i1 false)
  ret void
}

declare dso_local i64 @data_append_data(i64, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
