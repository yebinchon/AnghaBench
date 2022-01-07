; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_message.c_rds_message_map_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_message.c_rds_message_map_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_message = type { %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RDS_MSG_PAGEVEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rds_message* @rds_message_map_pages(i64* %0, i32 %1) #0 {
  %3 = alloca %struct.rds_message*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rds_message*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = call i8* @ceil(i32 %10, i32 %11)
  %13 = ptrtoint i8* %12 to i32
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @GFP_NOWAIT, align 4
  %20 = call %struct.rds_message* @rds_message_alloc(i32 %18, i32 %19)
  store %struct.rds_message* %20, %struct.rds_message** %6, align 8
  %21 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %22 = icmp ne %struct.rds_message* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.rds_message* @ERR_PTR(i32 %25)
  store %struct.rds_message* %26, %struct.rds_message** %3, align 8
  br label %91

27:                                               ; preds = %2
  %28 = load i32, i32* @RDS_MSG_PAGEVEC, align 4
  %29 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %30 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %29, i32 0, i32 2
  %31 = call i32 @set_bit(i32 %28, i32* %30)
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @cpu_to_be32(i32 %32)
  %34 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %35 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = call i8* @ceil(i32 %38, i32 %39)
  %41 = ptrtoint i8* %40 to i32
  %42 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %43 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32* @rds_message_alloc_sgs(%struct.rds_message* %45, i32 %46)
  %48 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %49 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  store i32* %47, i32** %50, align 8
  %51 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %52 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %27
  %57 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %58 = call i32 @rds_message_put(%struct.rds_message* %57)
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  %61 = call %struct.rds_message* @ERR_PTR(i32 %60)
  store %struct.rds_message* %61, %struct.rds_message** %3, align 8
  br label %91

62:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %86, %62
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %66 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ult i32 %64, %68
  br i1 %69, label %70, label %89

70:                                               ; preds = %63
  %71 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %72 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i64*, i64** %4, align 8
  %79 = load i32, i32* %7, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @virt_to_page(i64 %82)
  %84 = load i32, i32* @PAGE_SIZE, align 4
  %85 = call i32 @sg_set_page(i32* %77, i32 %83, i32 %84, i32 0)
  br label %86

86:                                               ; preds = %70
  %87 = load i32, i32* %7, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %63

89:                                               ; preds = %63
  %90 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  store %struct.rds_message* %90, %struct.rds_message** %3, align 8
  br label %91

91:                                               ; preds = %89, %56, %23
  %92 = load %struct.rds_message*, %struct.rds_message** %3, align 8
  ret %struct.rds_message* %92
}

declare dso_local i8* @ceil(i32, i32) #1

declare dso_local %struct.rds_message* @rds_message_alloc(i32, i32) #1

declare dso_local %struct.rds_message* @ERR_PTR(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32* @rds_message_alloc_sgs(%struct.rds_message*, i32) #1

declare dso_local i32 @rds_message_put(%struct.rds_message*) #1

declare dso_local i32 @sg_set_page(i32*, i32, i32, i32) #1

declare dso_local i32 @virt_to_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
