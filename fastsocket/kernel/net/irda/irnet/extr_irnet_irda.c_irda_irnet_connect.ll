; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/irnet/extr_irnet_irda.c_irda_irnet_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/irnet/extr_irnet_irda.c_irda_irnet_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64 }
%struct.TYPE_10__ = type { i8*, i64, i64, %struct.TYPE_9__, i32*, i32*, i32 }
%struct.TYPE_9__ = type { i32* }

@IRDA_SOCK_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"(self=0x%p)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@IRDA_SOCK_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Already connecting...\0A\00", align 1
@IRDA_SOCK_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Socket not cleaned up...\0A\00", align 1
@irnet_server = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"Inserted ``%s'' in hashbin...\0A\00", align 1
@DEV_ADDR_ANY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"auto-connect failed!\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"name connect failed!\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @irda_irnet_connect(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %4 = load i32, i32* @IRDA_SOCK_TRACE, align 4
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %6 = call i32 @DENTER(i32 %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %5)
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 6
  %9 = call i64 @test_and_set_bit(i32 0, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  %14 = load i32, i32* @IRDA_SOCK_INFO, align 4
  %15 = call i32 @DRETURN(i32 %13, i32 %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 5
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21, %16
  %27 = load i32, i32* @IRDA_SOCK_ERROR, align 4
  %28 = call i32 @DERROR(i32 %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %21
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @irnet_server, i32 0, i32 2), align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %29
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %53

38:                                               ; preds = %32
  %39 = call i32 @spin_lock_bh(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @irnet_server, i32 0, i32 0))
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @irnet_server, i32 0, i32 1), align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %42 = bitcast %struct.TYPE_10__* %41 to i32*
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @hashbin_insert(i32 %40, i32* %42, i32 0, i8* %45)
  %47 = call i32 @spin_unlock_bh(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @irnet_server, i32 0, i32 0))
  %48 = load i32, i32* @IRDA_SOCK_INFO, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @DEBUG(i32 %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %38, %32, %29
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @DEV_ADDR_ANY, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %53
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %59
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %69 = call i32 @irnet_discover_daddr_and_lsap_sel(%struct.TYPE_10__* %68)
  store i32 %69, i32* %3, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @IRDA_SOCK_INFO, align 4
  %74 = call i32 @DRETURN(i32 %72, i32 %73, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %75

75:                                               ; preds = %71, %67
  br label %100

76:                                               ; preds = %59, %53
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @DEV_ADDR_ANY, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %76
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %84 = call i32 @irnet_dname_to_daddr(%struct.TYPE_10__* %83)
  store i32 %84, i32* %3, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* @IRDA_SOCK_INFO, align 4
  %89 = call i32 @DRETURN(i32 %87, i32 %88, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %90

90:                                               ; preds = %86, %82
  br label %97

91:                                               ; preds = %76
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 2
  store i64 %94, i64* %96, align 8
  br label %97

97:                                               ; preds = %91, %90
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %99 = call i32 @irnet_find_lsap_sel(%struct.TYPE_10__* %98)
  br label %100

100:                                              ; preds = %97, %75
  %101 = load i32, i32* @IRDA_SOCK_TRACE, align 4
  %102 = call i32 @DEXIT(i32 %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @DENTER(i32, i8*, %struct.TYPE_10__*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @DRETURN(i32, i32, i8*) #1

declare dso_local i32 @DERROR(i32, i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @hashbin_insert(i32, i32*, i32, i8*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @DEBUG(i32, i8*, i8*) #1

declare dso_local i32 @irnet_discover_daddr_and_lsap_sel(%struct.TYPE_10__*) #1

declare dso_local i32 @irnet_dname_to_daddr(%struct.TYPE_10__*) #1

declare dso_local i32 @irnet_find_lsap_sel(%struct.TYPE_10__*) #1

declare dso_local i32 @DEXIT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
