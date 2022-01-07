; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_list.c_atf_list_citer_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_list.c_atf_list_citer_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_entry = type { %struct.list_entry* }
%struct.TYPE_4__ = type { %struct.list_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.list_entry* @atf_list_citer_next(%struct.list_entry* %0) #0 {
  %2 = alloca %struct.TYPE_4__, align 8
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = alloca %struct.list_entry*, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store %struct.list_entry* %0, %struct.list_entry** %5, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %7 = load %struct.list_entry*, %struct.list_entry** %6, align 8
  store %struct.list_entry* %7, %struct.list_entry** %4, align 8
  %8 = load %struct.list_entry*, %struct.list_entry** %4, align 8
  %9 = icmp ne %struct.list_entry* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @PRE(i32 %10)
  %12 = bitcast %struct.TYPE_4__* %2 to i8*
  %13 = bitcast %struct.TYPE_4__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 8, i1 false)
  %14 = load %struct.list_entry*, %struct.list_entry** %4, align 8
  %15 = getelementptr inbounds %struct.list_entry, %struct.list_entry* %14, i32 0, i32 0
  %16 = load %struct.list_entry*, %struct.list_entry** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store %struct.list_entry* %16, %struct.list_entry** %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %19 = load %struct.list_entry*, %struct.list_entry** %18, align 8
  ret %struct.list_entry* %19
}

declare dso_local i32 @PRE(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
