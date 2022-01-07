; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svc.c_svc_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svc.c_svc_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_serv = type { %struct.svc_program* }
%struct.svc_program = type { i32, i32, i32, %struct.TYPE_2__**, %struct.svc_program* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [40 x i8] c"svc: svc_register(%sv%d, %s, %u, %u)%s\0A\00", align 1
@IPPROTO_UDP = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c" (but not telling portmap)\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_register(%struct.svc_serv* %0, i32 %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.svc_serv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca %struct.svc_program*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.svc_serv* %0, %struct.svc_serv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  store i32 0, i32* %11, align 4
  %12 = load i16, i16* %7, align 2
  %13 = zext i16 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i16, i16* %8, align 2
  %17 = zext i16 %16 to i32
  %18 = icmp eq i32 %17, 0
  br label %19

19:                                               ; preds = %15, %4
  %20 = phi i1 [ false, %4 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %24 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %23, i32 0, i32 0
  %25 = load %struct.svc_program*, %struct.svc_program** %24, align 8
  store %struct.svc_program* %25, %struct.svc_program** %9, align 8
  br label %26

26:                                               ; preds = %104, %19
  %27 = load %struct.svc_program*, %struct.svc_program** %9, align 8
  %28 = icmp ne %struct.svc_program* %27, null
  br i1 %28, label %29, label %108

29:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %100, %29
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.svc_program*, %struct.svc_program** %9, align 8
  %33 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ult i32 %31, %34
  br i1 %35, label %36, label %103

36:                                               ; preds = %30
  %37 = load %struct.svc_program*, %struct.svc_program** %9, align 8
  %38 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %39, i64 %41
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = icmp eq %struct.TYPE_2__* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %100

46:                                               ; preds = %36
  %47 = load %struct.svc_program*, %struct.svc_program** %9, align 8
  %48 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i16, i16* %7, align 2
  %52 = zext i16 %51 to i32
  %53 = load i16, i16* @IPPROTO_UDP, align 2
  %54 = zext i16 %53 to i32
  %55 = icmp eq i32 %52, %54
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %58 = load i16, i16* %8, align 2
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.svc_program*, %struct.svc_program** %9, align 8
  %61 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %60, i32 0, i32 3
  %62 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %62, i64 %64
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %72 = call i32 @dprintk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50, i8* %57, i16 zeroext %58, i32 %59, i8* %71)
  %73 = load %struct.svc_program*, %struct.svc_program** %9, align 8
  %74 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %73, i32 0, i32 3
  %75 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %75, i64 %77
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %46
  br label %100

84:                                               ; preds = %46
  %85 = load %struct.svc_program*, %struct.svc_program** %9, align 8
  %86 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.svc_program*, %struct.svc_program** %9, align 8
  %89 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i16, i16* %7, align 2
  %94 = load i16, i16* %8, align 2
  %95 = call i32 @__svc_register(i32 %87, i32 %90, i32 %91, i32 %92, i16 zeroext %93, i16 zeroext %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %84
  br label %103

99:                                               ; preds = %84
  br label %100

100:                                              ; preds = %99, %83, %45
  %101 = load i32, i32* %10, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %30

103:                                              ; preds = %98, %30
  br label %104

104:                                              ; preds = %103
  %105 = load %struct.svc_program*, %struct.svc_program** %9, align 8
  %106 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %105, i32 0, i32 4
  %107 = load %struct.svc_program*, %struct.svc_program** %106, align 8
  store %struct.svc_program* %107, %struct.svc_program** %9, align 8
  br label %26

108:                                              ; preds = %26
  %109 = load i32, i32* %11, align 4
  ret i32 %109
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i8*, i16 zeroext, i32, i8*) #1

declare dso_local i32 @__svc_register(i32, i32, i32, i32, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
