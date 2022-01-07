; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_neigh.c_neigh_elist_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_neigh.c_neigh_elist_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neighbour = type { i64, i32 }
%struct.elist_cb_state = type { i64, i64, i64, i32*, i32 }
%struct.dn_neigh = type { i32, i32, i32 }

@DN_NDFLAG_R1 = common dso_local global i32 0, align 4
@DN_NDFLAG_R2 = common dso_local global i32 0, align 4
@NUD_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.neighbour*, i8*)* @neigh_elist_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neigh_elist_cb(%struct.neighbour* %0, i8* %1) #0 {
  %3 = alloca %struct.neighbour*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.elist_cb_state*, align 8
  %6 = alloca %struct.dn_neigh*, align 8
  store %struct.neighbour* %0, %struct.neighbour** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.elist_cb_state*
  store %struct.elist_cb_state* %8, %struct.elist_cb_state** %5, align 8
  %9 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %10 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.elist_cb_state*, %struct.elist_cb_state** %5, align 8
  %13 = getelementptr inbounds %struct.elist_cb_state, %struct.elist_cb_state* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %96

17:                                               ; preds = %2
  %18 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %19 = bitcast %struct.neighbour* %18 to %struct.dn_neigh*
  store %struct.dn_neigh* %19, %struct.dn_neigh** %6, align 8
  %20 = load %struct.dn_neigh*, %struct.dn_neigh** %6, align 8
  %21 = getelementptr inbounds %struct.dn_neigh, %struct.dn_neigh* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DN_NDFLAG_R1, align 4
  %24 = load i32, i32* @DN_NDFLAG_R2, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %17
  br label %96

29:                                               ; preds = %17
  %30 = load %struct.elist_cb_state*, %struct.elist_cb_state** %5, align 8
  %31 = getelementptr inbounds %struct.elist_cb_state, %struct.elist_cb_state* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.elist_cb_state*, %struct.elist_cb_state** %5, align 8
  %34 = getelementptr inbounds %struct.elist_cb_state, %struct.elist_cb_state* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %29
  %38 = load %struct.elist_cb_state*, %struct.elist_cb_state** %5, align 8
  %39 = getelementptr inbounds %struct.elist_cb_state, %struct.elist_cb_state* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.elist_cb_state*, %struct.elist_cb_state** %5, align 8
  %42 = getelementptr inbounds %struct.elist_cb_state, %struct.elist_cb_state* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.dn_neigh*, %struct.dn_neigh** %6, align 8
  %45 = getelementptr inbounds %struct.dn_neigh, %struct.dn_neigh* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32* @dn_find_slot(i32 %40, i64 %43, i32 %46)
  %48 = load %struct.elist_cb_state*, %struct.elist_cb_state** %5, align 8
  %49 = getelementptr inbounds %struct.elist_cb_state, %struct.elist_cb_state* %48, i32 0, i32 3
  store i32* %47, i32** %49, align 8
  br label %55

50:                                               ; preds = %29
  %51 = load %struct.elist_cb_state*, %struct.elist_cb_state** %5, align 8
  %52 = getelementptr inbounds %struct.elist_cb_state, %struct.elist_cb_state* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %52, align 8
  br label %55

55:                                               ; preds = %50, %37
  %56 = load %struct.elist_cb_state*, %struct.elist_cb_state** %5, align 8
  %57 = getelementptr inbounds %struct.elist_cb_state, %struct.elist_cb_state* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %96

61:                                               ; preds = %55
  %62 = load %struct.elist_cb_state*, %struct.elist_cb_state** %5, align 8
  %63 = getelementptr inbounds %struct.elist_cb_state, %struct.elist_cb_state* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.dn_neigh*, %struct.dn_neigh** %6, align 8
  %66 = getelementptr inbounds %struct.dn_neigh, %struct.dn_neigh* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dn_dn2eth(i32* %64, i32 %67)
  %69 = load %struct.elist_cb_state*, %struct.elist_cb_state** %5, align 8
  %70 = getelementptr inbounds %struct.elist_cb_state, %struct.elist_cb_state* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 6
  store i32* %72, i32** %70, align 8
  %73 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %74 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @NUD_CONNECTED, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 128, i32 0
  %81 = load %struct.elist_cb_state*, %struct.elist_cb_state** %5, align 8
  %82 = getelementptr inbounds %struct.elist_cb_state, %struct.elist_cb_state* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  store i32 %80, i32* %83, align 4
  %84 = load %struct.dn_neigh*, %struct.dn_neigh** %6, align 8
  %85 = getelementptr inbounds %struct.dn_neigh, %struct.dn_neigh* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.elist_cb_state*, %struct.elist_cb_state** %5, align 8
  %88 = getelementptr inbounds %struct.elist_cb_state, %struct.elist_cb_state* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %86
  store i32 %91, i32* %89, align 4
  %92 = load %struct.elist_cb_state*, %struct.elist_cb_state** %5, align 8
  %93 = getelementptr inbounds %struct.elist_cb_state, %struct.elist_cb_state* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %93, align 8
  br label %96

96:                                               ; preds = %61, %60, %28, %16
  ret void
}

declare dso_local i32* @dn_find_slot(i32, i64, i32) #1

declare dso_local i32 @dn_dn2eth(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
