; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_struct-equiv.c_struct_equiv_make_checkpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_struct-equiv.c_struct_equiv_make_checkpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.struct_equiv_checkpoint = type { i32 }
%struct.equiv_info = type { %struct.struct_equiv_checkpoint }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.struct_equiv_checkpoint*, %struct.equiv_info*)* @struct_equiv_make_checkpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @struct_equiv_make_checkpoint(%struct.struct_equiv_checkpoint* %0, %struct.equiv_info* %1) #0 {
  %3 = alloca %struct.struct_equiv_checkpoint*, align 8
  %4 = alloca %struct.equiv_info*, align 8
  store %struct.struct_equiv_checkpoint* %0, %struct.struct_equiv_checkpoint** %3, align 8
  store %struct.equiv_info* %1, %struct.equiv_info** %4, align 8
  %5 = load %struct.struct_equiv_checkpoint*, %struct.struct_equiv_checkpoint** %3, align 8
  %6 = load %struct.equiv_info*, %struct.equiv_info** %4, align 8
  %7 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %6, i32 0, i32 0
  %8 = bitcast %struct.struct_equiv_checkpoint* %5 to i8*
  %9 = bitcast %struct.struct_equiv_checkpoint* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
