; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/irnet/extr_irnet_irda.c_irnet_find_socket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/irnet/extr_irnet_irda.c_irnet_find_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64, i8*, i64, i64, i32, i32, i32 }

@IRDA_SERV_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"(self=0x%p)\0A\00", align 1
@irnet_server = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@IRDA_SERV_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Socket 0x%p matches rname ``%s''.\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Socket 0x%p matches daddr %#08x.\0A\00", align 1
@DEV_ADDR_ANY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"Socket 0x%p is free.\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c" - new = 0x%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.TYPE_9__*)* @irnet_find_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @irnet_find_socket(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  %5 = load i32, i32* @IRDA_SERV_TRACE, align 4
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %7 = call i32 @DENTER(i32 %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* %6)
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @irttp_get_daddr(i32 %10)
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @irttp_get_saddr(i32 %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %21 = call i32 @irnet_daddr_to_dname(%struct.TYPE_9__* %20)
  store i32 %21, i32* %4, align 4
  %22 = call i32 @spin_lock_bh(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @irnet_server, i32 0, i32 0))
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %1
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @irnet_server, i32 0, i32 1), align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @hashbin_find(i32 %26, i32 0, i8* %29)
  %31 = inttoptr i64 %30 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %3, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = icmp ne %struct.TYPE_9__* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %25
  %35 = load i32, i32* @IRDA_SERV_INFO, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 (i32, i8*, %struct.TYPE_9__*, ...) @DEBUG(i32 %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_9__* %36, i8* %39)
  br label %41

41:                                               ; preds = %34, %25
  br label %42

42:                                               ; preds = %41, %1
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = icmp eq %struct.TYPE_9__* %43, null
  br i1 %44, label %45, label %80

45:                                               ; preds = %42
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @irnet_server, i32 0, i32 1), align 4
  %47 = call i64 @hashbin_get_first(i32 %46)
  %48 = inttoptr i64 %47 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %3, align 8
  br label %49

49:                                               ; preds = %75, %45
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = icmp ne %struct.TYPE_9__* %50, null
  br i1 %51, label %52, label %79

52:                                               ; preds = %49
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %68, label %60

60:                                               ; preds = %52
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %60, %52
  %69 = load i32, i32* @IRDA_SERV_INFO, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 (i32, i8*, %struct.TYPE_9__*, ...) @DEBUG(i32 %69, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_9__* %70, i64 %73)
  br label %79

75:                                               ; preds = %60
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @irnet_server, i32 0, i32 1), align 4
  %77 = call i64 @hashbin_get_next(i32 %76)
  %78 = inttoptr i64 %77 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %78, %struct.TYPE_9__** %3, align 8
  br label %49

79:                                               ; preds = %68, %49
  br label %80

80:                                               ; preds = %79, %42
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %82 = icmp eq %struct.TYPE_9__* %81, null
  br i1 %82, label %83, label %123

83:                                               ; preds = %80
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @irnet_server, i32 0, i32 1), align 4
  %85 = call i64 @hashbin_get_first(i32 %84)
  %86 = inttoptr i64 %85 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %86, %struct.TYPE_9__** %3, align 8
  br label %87

87:                                               ; preds = %118, %83
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %89 = icmp ne %struct.TYPE_9__* %88, null
  br i1 %89, label %90, label %122

90:                                               ; preds = %87
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 4
  %93 = call i32 @test_bit(i32 0, i32* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %118, label %95

95:                                               ; preds = %90
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @DEV_ADDR_ANY, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %118

101:                                              ; preds = %95
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 0
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %101
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load i32, i32* @IRDA_SERV_INFO, align 4
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %117 = call i32 (i32, i8*, %struct.TYPE_9__*, ...) @DEBUG(i32 %115, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_9__* %116)
  br label %122

118:                                              ; preds = %109, %101, %95, %90
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @irnet_server, i32 0, i32 1), align 4
  %120 = call i64 @hashbin_get_next(i32 %119)
  %121 = inttoptr i64 %120 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %121, %struct.TYPE_9__** %3, align 8
  br label %87

122:                                              ; preds = %114, %87
  br label %123

123:                                              ; preds = %122, %80
  %124 = call i32 @spin_unlock_bh(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @irnet_server, i32 0, i32 0))
  %125 = load i32, i32* @IRDA_SERV_TRACE, align 4
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %127 = call i32 @DEXIT(i32 %125, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_9__* %126)
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %128
}

declare dso_local i32 @DENTER(i32, i8*, %struct.TYPE_9__*) #1

declare dso_local i64 @irttp_get_daddr(i32) #1

declare dso_local i32 @irttp_get_saddr(i32) #1

declare dso_local i32 @irnet_daddr_to_dname(%struct.TYPE_9__*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @hashbin_find(i32, i32, i8*) #1

declare dso_local i32 @DEBUG(i32, i8*, %struct.TYPE_9__*, ...) #1

declare dso_local i64 @hashbin_get_first(i32) #1

declare dso_local i64 @hashbin_get_next(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @DEXIT(i32, i8*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
