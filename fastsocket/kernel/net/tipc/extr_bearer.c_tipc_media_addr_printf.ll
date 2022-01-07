; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bearer.c_tipc_media_addr_printf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bearer.c_tipc_media_addr_printf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media = type { i64, i32 (%struct.tipc_media_addr*, i8*, i32)*, i32 }
%struct.tipc_media_addr = type { i32, i32 }
%struct.print_buf = type { i32 }

@media_list = common dso_local global %struct.media* null, align 8
@media_count = common dso_local global i64 0, align 8
@MAX_ADDR_STR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s(%s)\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"UNKNOWN(%u)\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"-%02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_media_addr_printf(%struct.print_buf* %0, %struct.tipc_media_addr* %1) #0 {
  %3 = alloca %struct.print_buf*, align 8
  %4 = alloca %struct.tipc_media_addr*, align 8
  %5 = alloca %struct.media*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  store %struct.print_buf* %0, %struct.print_buf** %3, align 8
  store %struct.tipc_media_addr* %1, %struct.tipc_media_addr** %4, align 8
  %11 = load %struct.tipc_media_addr*, %struct.tipc_media_addr** %4, align 8
  %12 = getelementptr inbounds %struct.tipc_media_addr, %struct.tipc_media_addr* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @ntohl(i32 %13)
  store i64 %14, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %15 = load %struct.media*, %struct.media** @media_list, align 8
  store %struct.media* %15, %struct.media** %5, align 8
  br label %16

16:                                               ; preds = %28, %2
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @media_count, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = load %struct.media*, %struct.media** %5, align 8
  %22 = getelementptr inbounds %struct.media, %struct.media* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %33

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* %7, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %7, align 8
  %31 = load %struct.media*, %struct.media** %5, align 8
  %32 = getelementptr inbounds %struct.media, %struct.media* %31, i32 1
  store %struct.media* %32, %struct.media** %5, align 8
  br label %16

33:                                               ; preds = %26, %16
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @media_count, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %33
  %38 = load %struct.media*, %struct.media** %5, align 8
  %39 = getelementptr inbounds %struct.media, %struct.media* %38, i32 0, i32 1
  %40 = load i32 (%struct.tipc_media_addr*, i8*, i32)*, i32 (%struct.tipc_media_addr*, i8*, i32)** %39, align 8
  %41 = icmp ne i32 (%struct.tipc_media_addr*, i8*, i32)* %40, null
  br i1 %41, label %42, label %60

42:                                               ; preds = %37
  %43 = load i32, i32* @MAX_ADDR_STR, align 4
  %44 = zext i32 %43 to i64
  %45 = call i8* @llvm.stacksave()
  store i8* %45, i8** %8, align 8
  %46 = alloca i8, i64 %44, align 16
  store i64 %44, i64* %9, align 8
  %47 = load %struct.print_buf*, %struct.print_buf** %3, align 8
  %48 = load %struct.media*, %struct.media** %5, align 8
  %49 = getelementptr inbounds %struct.media, %struct.media* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = load %struct.media*, %struct.media** %5, align 8
  %53 = getelementptr inbounds %struct.media, %struct.media* %52, i32 0, i32 1
  %54 = load i32 (%struct.tipc_media_addr*, i8*, i32)*, i32 (%struct.tipc_media_addr*, i8*, i32)** %53, align 8
  %55 = load %struct.tipc_media_addr*, %struct.tipc_media_addr** %4, align 8
  %56 = trunc i64 %44 to i32
  %57 = call i32 %54(%struct.tipc_media_addr* %55, i8* %46, i32 %56)
  %58 = call i32 (%struct.print_buf*, i8*, i64, ...) @tipc_printf(%struct.print_buf* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %51, i32 %57)
  %59 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %59)
  br label %81

60:                                               ; preds = %37, %33
  %61 = load %struct.tipc_media_addr*, %struct.tipc_media_addr** %4, align 8
  %62 = getelementptr inbounds %struct.tipc_media_addr, %struct.tipc_media_addr* %61, i32 0, i32 0
  %63 = bitcast i32* %62 to i64*
  store i64* %63, i64** %10, align 8
  %64 = load %struct.print_buf*, %struct.print_buf** %3, align 8
  %65 = load i64, i64* %6, align 8
  %66 = call i32 (%struct.print_buf*, i8*, i64, ...) @tipc_printf(%struct.print_buf* %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %65)
  store i64 0, i64* %7, align 8
  br label %67

67:                                               ; preds = %77, %60
  %68 = load i64, i64* %7, align 8
  %69 = icmp ult i64 %68, 4
  br i1 %69, label %70, label %80

70:                                               ; preds = %67
  %71 = load %struct.print_buf*, %struct.print_buf** %3, align 8
  %72 = load i64*, i64** %10, align 8
  %73 = load i64, i64* %7, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = call i32 (%struct.print_buf*, i8*, i64, ...) @tipc_printf(%struct.print_buf* %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %75)
  br label %77

77:                                               ; preds = %70
  %78 = load i64, i64* %7, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %7, align 8
  br label %67

80:                                               ; preds = %67
  br label %81

81:                                               ; preds = %80, %42
  ret void
}

declare dso_local i64 @ntohl(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @tipc_printf(%struct.print_buf*, i8*, i64, ...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
