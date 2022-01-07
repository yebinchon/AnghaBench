; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/tcm_fc/extr_tfc_sess.c_ft_tport_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/tcm_fc/extr_tfc_sess.c_ft_tport_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ft_tport = type { i32*, %struct.ft_tpg*, %struct.fc_lport* }
%struct.ft_tpg = type { %struct.ft_tport* }
%struct.fc_lport = type { i32* }

@FC_TYPE_FCP = common dso_local global i64 0, align 8
@ft_lport_lock = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@FT_SESS_HASH_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ft_tport* (%struct.fc_lport*)* @ft_tport_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ft_tport* @ft_tport_create(%struct.fc_lport* %0) #0 {
  %2 = alloca %struct.ft_tport*, align 8
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.ft_tpg*, align 8
  %5 = alloca %struct.ft_tport*, align 8
  %6 = alloca i32, align 4
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  %7 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %8 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i64, i64* @FC_TYPE_FCP, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @lockdep_is_held(i32* @ft_lport_lock)
  %14 = call %struct.ft_tport* @rcu_dereference_protected(i32 %12, i32 %13)
  store %struct.ft_tport* %14, %struct.ft_tport** %5, align 8
  %15 = load %struct.ft_tport*, %struct.ft_tport** %5, align 8
  %16 = icmp ne %struct.ft_tport* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.ft_tport*, %struct.ft_tport** %5, align 8
  %19 = getelementptr inbounds %struct.ft_tport, %struct.ft_tport* %18, i32 0, i32 1
  %20 = load %struct.ft_tpg*, %struct.ft_tpg** %19, align 8
  %21 = icmp ne %struct.ft_tpg* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load %struct.ft_tport*, %struct.ft_tport** %5, align 8
  store %struct.ft_tport* %23, %struct.ft_tport** %2, align 8
  br label %79

24:                                               ; preds = %17, %1
  %25 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %26 = call %struct.ft_tpg* @ft_lport_find_tpg(%struct.fc_lport* %25)
  store %struct.ft_tpg* %26, %struct.ft_tpg** %4, align 8
  %27 = load %struct.ft_tpg*, %struct.ft_tpg** %4, align 8
  %28 = icmp ne %struct.ft_tpg* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store %struct.ft_tport* null, %struct.ft_tport** %2, align 8
  br label %79

30:                                               ; preds = %24
  %31 = load %struct.ft_tport*, %struct.ft_tport** %5, align 8
  %32 = icmp ne %struct.ft_tport* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.ft_tpg*, %struct.ft_tpg** %4, align 8
  %35 = load %struct.ft_tport*, %struct.ft_tport** %5, align 8
  %36 = getelementptr inbounds %struct.ft_tport, %struct.ft_tport* %35, i32 0, i32 1
  store %struct.ft_tpg* %34, %struct.ft_tpg** %36, align 8
  %37 = load %struct.ft_tport*, %struct.ft_tport** %5, align 8
  store %struct.ft_tport* %37, %struct.ft_tport** %2, align 8
  br label %79

38:                                               ; preds = %30
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.ft_tport* @kzalloc(i32 24, i32 %39)
  store %struct.ft_tport* %40, %struct.ft_tport** %5, align 8
  %41 = load %struct.ft_tport*, %struct.ft_tport** %5, align 8
  %42 = icmp ne %struct.ft_tport* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  store %struct.ft_tport* null, %struct.ft_tport** %2, align 8
  br label %79

44:                                               ; preds = %38
  %45 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %46 = load %struct.ft_tport*, %struct.ft_tport** %5, align 8
  %47 = getelementptr inbounds %struct.ft_tport, %struct.ft_tport* %46, i32 0, i32 2
  store %struct.fc_lport* %45, %struct.fc_lport** %47, align 8
  %48 = load %struct.ft_tpg*, %struct.ft_tpg** %4, align 8
  %49 = load %struct.ft_tport*, %struct.ft_tport** %5, align 8
  %50 = getelementptr inbounds %struct.ft_tport, %struct.ft_tport* %49, i32 0, i32 1
  store %struct.ft_tpg* %48, %struct.ft_tpg** %50, align 8
  %51 = load %struct.ft_tport*, %struct.ft_tport** %5, align 8
  %52 = load %struct.ft_tpg*, %struct.ft_tpg** %4, align 8
  %53 = getelementptr inbounds %struct.ft_tpg, %struct.ft_tpg* %52, i32 0, i32 0
  store %struct.ft_tport* %51, %struct.ft_tport** %53, align 8
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %66, %44
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @FT_SESS_HASH_SIZE, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load %struct.ft_tport*, %struct.ft_tport** %5, align 8
  %60 = getelementptr inbounds %struct.ft_tport, %struct.ft_tport* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = call i32 @INIT_HLIST_HEAD(i32* %64)
  br label %66

66:                                               ; preds = %58
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %54

69:                                               ; preds = %54
  %70 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %71 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @FC_TYPE_FCP, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ft_tport*, %struct.ft_tport** %5, align 8
  %77 = call i32 @rcu_assign_pointer(i32 %75, %struct.ft_tport* %76)
  %78 = load %struct.ft_tport*, %struct.ft_tport** %5, align 8
  store %struct.ft_tport* %78, %struct.ft_tport** %2, align 8
  br label %79

79:                                               ; preds = %69, %43, %33, %29, %22
  %80 = load %struct.ft_tport*, %struct.ft_tport** %2, align 8
  ret %struct.ft_tport* %80
}

declare dso_local %struct.ft_tport* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local %struct.ft_tpg* @ft_lport_find_tpg(%struct.fc_lport*) #1

declare dso_local %struct.ft_tport* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.ft_tport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
