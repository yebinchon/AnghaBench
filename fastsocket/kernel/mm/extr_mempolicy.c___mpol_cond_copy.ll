; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c___mpol_cond_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c___mpol_cond_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mempolicy = type { i32 }

@MPOL_F_SHARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mempolicy* @__mpol_cond_copy(%struct.mempolicy* %0, %struct.mempolicy* %1) #0 {
  %3 = alloca %struct.mempolicy*, align 8
  %4 = alloca %struct.mempolicy*, align 8
  %5 = alloca %struct.mempolicy*, align 8
  store %struct.mempolicy* %0, %struct.mempolicy** %4, align 8
  store %struct.mempolicy* %1, %struct.mempolicy** %5, align 8
  %6 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %7 = call i32 @mpol_needs_cond_ref(%struct.mempolicy* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  store %struct.mempolicy* %10, %struct.mempolicy** %3, align 8
  br label %25

11:                                               ; preds = %2
  %12 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %13 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %14 = bitcast %struct.mempolicy* %12 to i8*
  %15 = bitcast %struct.mempolicy* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 4, i1 false)
  %16 = load i32, i32* @MPOL_F_SHARED, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %19 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %23 = call i32 @__mpol_put(%struct.mempolicy* %22)
  %24 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  store %struct.mempolicy* %24, %struct.mempolicy** %3, align 8
  br label %25

25:                                               ; preds = %11, %9
  %26 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  ret %struct.mempolicy* %26
}

declare dso_local i32 @mpol_needs_cond_ref(%struct.mempolicy*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__mpol_put(%struct.mempolicy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
