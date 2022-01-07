; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_client.c_br_ssl_client_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_client.c_br_ssl_client_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64*, i64, i32, i32 }

@BR_ERR_BAD_PARAM = common dso_local global i32 0, align 4
@br_ssl_hs_client_init_main = common dso_local global i32 0, align 4
@br_ssl_hs_client_run = common dso_local global i32 0, align 4
@BR_ERR_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_ssl_client_reset(%struct.TYPE_9__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = call i32 @br_ssl_engine_set_buffer(%struct.TYPE_10__* %10, i32* null, i32 0, i32 0)
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 3
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = call i32 @br_ssl_client_forget_session(%struct.TYPE_9__* %22)
  br label %24

24:                                               ; preds = %21, %3
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = call i32 @br_ssl_engine_init_rand(%struct.TYPE_10__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %74

30:                                               ; preds = %24
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  store i64 0, i64* %41, align 8
  br label %62

42:                                               ; preds = %30
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = icmp ugt i64 %47, 8
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* @BR_ERR_BAD_PARAM, align 4
  %53 = call i32 @br_ssl_engine_fail(%struct.TYPE_10__* %51, i32 %52)
  store i32 0, i32* %4, align 4
  br label %74

54:                                               ; preds = %42
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @memcpy(i64* %58, i8* %59, i64 %60)
  br label %62

62:                                               ; preds = %54, %36
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* @br_ssl_hs_client_init_main, align 4
  %66 = load i32, i32* @br_ssl_hs_client_run, align 4
  %67 = call i32 @br_ssl_engine_hs_reset(%struct.TYPE_10__* %64, i32 %65, i32 %66)
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = call i64 @br_ssl_engine_last_error(%struct.TYPE_10__* %69)
  %71 = load i64, i64* @BR_ERR_OK, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %62, %49, %29
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @br_ssl_engine_set_buffer(%struct.TYPE_10__*, i32*, i32, i32) #1

declare dso_local i32 @br_ssl_client_forget_session(%struct.TYPE_9__*) #1

declare dso_local i32 @br_ssl_engine_init_rand(%struct.TYPE_10__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @br_ssl_engine_fail(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @memcpy(i64*, i8*, i64) #1

declare dso_local i32 @br_ssl_engine_hs_reset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i64 @br_ssl_engine_last_error(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
