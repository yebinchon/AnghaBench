; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_proto.c_dccp_set_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_proto.c_dccp_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.sock*)* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32* }

@.str = private unnamed_addr constant [21 x i8] c"%s(%p)  %s  -->  %s\0A\00", align 1
@DCCP_MIB_CURRESTAB = common dso_local global i32 0, align 4
@DCCP_PARTOPEN = common dso_local global i32 0, align 4
@DCCP_ACTIVE_CLOSEREQ = common dso_local global i32 0, align 4
@DCCP_CLOSING = common dso_local global i32 0, align 4
@DCCP_MIB_ESTABRESETS = common dso_local global i32 0, align 4
@SOCK_BINDPORT_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dccp_set_state(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call i32 @dccp_role(%struct.sock* %9)
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @dccp_state_name(i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @dccp_state_name(i32 %14)
  %16 = call i32 @dccp_pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %10, %struct.sock* %11, i32 %13, i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN_ON(i32 %20)
  %22 = load i32, i32* %4, align 4
  switch i32 %22, label %77 [
    i32 128, label %23
    i32 129, label %39
  ]

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 128
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @DCCP_MIB_CURRESTAB, align 4
  %28 = call i32 @DCCP_INC_STATS(i32 %27)
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @DCCP_PARTOPEN, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.sock*, %struct.sock** %3, align 8
  %35 = call %struct.TYPE_6__* @dccp_sk(%struct.sock* %34)
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = call i32 @dccp_feat_list_purge(i32* %36)
  br label %38

38:                                               ; preds = %33, %29
  br label %84

39:                                               ; preds = %2
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 128
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @DCCP_ACTIVE_CLOSEREQ, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @DCCP_CLOSING, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46, %42, %39
  %51 = load i32, i32* @DCCP_MIB_ESTABRESETS, align 4
  %52 = call i32 @DCCP_INC_STATS(i32 %51)
  br label %53

53:                                               ; preds = %50, %46
  %54 = load %struct.sock*, %struct.sock** %3, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %57, align 8
  %59 = load %struct.sock*, %struct.sock** %3, align 8
  %60 = call i32 %58(%struct.sock* %59)
  %61 = load %struct.sock*, %struct.sock** %3, align 8
  %62 = call %struct.TYPE_5__* @inet_csk(%struct.sock* %61)
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %76

66:                                               ; preds = %53
  %67 = load %struct.sock*, %struct.sock** %3, align 8
  %68 = getelementptr inbounds %struct.sock, %struct.sock* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @SOCK_BINDPORT_LOCK, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %66
  %74 = load %struct.sock*, %struct.sock** %3, align 8
  %75 = call i32 @inet_put_port(%struct.sock* %74)
  br label %76

76:                                               ; preds = %73, %66, %53
  br label %77

77:                                               ; preds = %2, %76
  %78 = load i32, i32* %5, align 4
  %79 = icmp eq i32 %78, 128
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* @DCCP_MIB_CURRESTAB, align 4
  %82 = call i32 @DCCP_DEC_STATS(i32 %81)
  br label %83

83:                                               ; preds = %80, %77
  br label %84

84:                                               ; preds = %83, %38
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.sock*, %struct.sock** %3, align 8
  %87 = getelementptr inbounds %struct.sock, %struct.sock* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  ret void
}

declare dso_local i32 @dccp_pr_debug(i8*, i32, %struct.sock*, i32, i32) #1

declare dso_local i32 @dccp_role(%struct.sock*) #1

declare dso_local i32 @dccp_state_name(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @DCCP_INC_STATS(i32) #1

declare dso_local i32 @dccp_feat_list_purge(i32*) #1

declare dso_local %struct.TYPE_6__* @dccp_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_5__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @inet_put_port(%struct.sock*) #1

declare dso_local i32 @DCCP_DEC_STATS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
