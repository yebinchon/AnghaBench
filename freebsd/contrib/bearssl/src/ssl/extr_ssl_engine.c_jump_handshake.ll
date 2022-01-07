; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_engine.c_jump_handshake.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_engine.c_jump_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, i32, i32*, i32*, i32, i32 (i32*)*, i32* }

@BR_SSL_APPLICATION_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32)* @jump_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jump_handshake(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %7

7:                                                ; preds = %99, %2
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = call i32* @recvpld_buf(%struct.TYPE_9__* %8, i64* %5)
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 8
  store i32* %9, i32** %11, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 8
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %7
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @BR_SSL_APPLICATION_DATA, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i64 0, i64* %5, align 8
  br label %23

23:                                               ; preds = %22, %16, %7
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = call i32* @sendpld_buf(%struct.TYPE_9__* %24, i64* %6)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 5
  store i32* %25, i32** %27, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 4
  store i32* %25, i32** %29, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %23
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = call i64 @br_ssl_engine_has_pld_to_send(%struct.TYPE_9__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i64 0, i64* %6, align 8
  br label %39

39:                                               ; preds = %38, %34, %23
  %40 = load i64, i64* %5, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 7
  %51 = load i32 (i32*)*, i32 (i32*)** %50, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 6
  %54 = call i32 %51(i32* %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = call i64 @br_ssl_engine_closed(%struct.TYPE_9__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %39
  br label %102

59:                                               ; preds = %39
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 5
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %62, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %59
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 5
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = ptrtoint i32* %71 to i64
  %76 = ptrtoint i32* %74 to i64
  %77 = sub i64 %75, %76
  %78 = sdiv exact i64 %77, 4
  %79 = inttoptr i64 %78 to i32*
  %80 = call i32 @sendpld_ack(%struct.TYPE_9__* %68, i32* %79)
  br label %81

81:                                               ; preds = %67, %59
  %82 = load i64, i64* %5, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %82, %85
  br i1 %86, label %87, label %101

87:                                               ; preds = %81
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %89 = load i64, i64* %5, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = sub i64 %89, %92
  %94 = call i32 @recvpld_ack(%struct.TYPE_9__* %88, i64 %93)
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %87
  store i32 0, i32* %4, align 4
  br label %7

100:                                              ; preds = %87
  br label %101

101:                                              ; preds = %100, %81
  br label %102

102:                                              ; preds = %58, %101
  ret void
}

declare dso_local i32* @recvpld_buf(%struct.TYPE_9__*, i64*) #1

declare dso_local i32* @sendpld_buf(%struct.TYPE_9__*, i64*) #1

declare dso_local i64 @br_ssl_engine_has_pld_to_send(%struct.TYPE_9__*) #1

declare dso_local i64 @br_ssl_engine_closed(%struct.TYPE_9__*) #1

declare dso_local i32 @sendpld_ack(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @recvpld_ack(%struct.TYPE_9__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
