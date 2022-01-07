; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c_core_scsi3_alloc_aptpl_registration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c_core_scsi3_alloc_aptpl_registration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t10_reservation = type { i32, i32 }
%struct.t10_pr_registration = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32*, i64, i8*, i8*, i32*, i32*, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"Illegal parameters for APTPL registration\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@t10_pr_reg_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Unable to allocate struct t10_pr_registration\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PR_REG_ISID_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@PR_APTPL_MAX_IPORT_LEN = common dso_local global i32 0, align 4
@PR_APTPL_MAX_TPORT_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [64 x i8] c"SPC-3 PR APTPL Successfully added registration%s from metadata\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"+reservation\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @core_scsi3_alloc_aptpl_registration(%struct.t10_reservation* %0, i64 %1, i8* %2, i8* %3, i8* %4, i8* %5, i32 %6, i8* %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.t10_reservation*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.t10_pr_registration*, align 8
  store %struct.t10_reservation* %0, %struct.t10_reservation** %13, align 8
  store i64 %1, i64* %14, align 8
  store i8* %2, i8** %15, align 8
  store i8* %3, i8** %16, align 8
  store i8* %4, i8** %17, align 8
  store i8* %5, i8** %18, align 8
  store i32 %6, i32* %19, align 4
  store i8* %7, i8** %20, align 8
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  %25 = load i8*, i8** %15, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %11
  %28 = load i8*, i8** %18, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i64, i64* %14, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30, %27, %11
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %12, align 4
  br label %142

37:                                               ; preds = %30
  %38 = load i32, i32* @t10_pr_reg_cache, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.t10_pr_registration* @kmem_cache_zalloc(i32 %38, i32 %39)
  store %struct.t10_pr_registration* %40, %struct.t10_pr_registration** %24, align 8
  %41 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %42 = icmp ne %struct.t10_pr_registration* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %12, align 4
  br label %142

47:                                               ; preds = %37
  %48 = load %struct.t10_reservation*, %struct.t10_reservation** %13, align 8
  %49 = getelementptr inbounds %struct.t10_reservation, %struct.t10_reservation* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i32 @kzalloc(i32 %50, i32 %51)
  %53 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %54 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %53, i32 0, i32 23
  store i32 %52, i32* %54, align 4
  %55 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %56 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %55, i32 0, i32 22
  %57 = call i32 @INIT_LIST_HEAD(i32* %56)
  %58 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %59 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %58, i32 0, i32 21
  %60 = call i32 @INIT_LIST_HEAD(i32* %59)
  %61 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %62 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %61, i32 0, i32 4
  %63 = call i32 @INIT_LIST_HEAD(i32* %62)
  %64 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %65 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %64, i32 0, i32 20
  %66 = call i32 @INIT_LIST_HEAD(i32* %65)
  %67 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %68 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %67, i32 0, i32 19
  %69 = call i32 @INIT_LIST_HEAD(i32* %68)
  %70 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %71 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %70, i32 0, i32 18
  %72 = call i32 @atomic_set(i32* %71, i32 0)
  %73 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %74 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %73, i32 0, i32 17
  store i32* null, i32** %74, align 8
  %75 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %76 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %75, i32 0, i32 16
  store i32* null, i32** %76, align 8
  %77 = load i8*, i8** %17, align 8
  %78 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %79 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %78, i32 0, i32 15
  store i8* %77, i8** %79, align 8
  %80 = load i8*, i8** %20, align 8
  %81 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %82 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %81, i32 0, i32 14
  store i8* %80, i8** %82, align 8
  %83 = load i64, i64* %14, align 8
  %84 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %85 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %84, i32 0, i32 13
  store i64 %83, i64* %85, align 8
  %86 = load i32, i32* %22, align 4
  %87 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %88 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %90 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %89, i32 0, i32 1
  store i32 1, i32* %90, align 4
  %91 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %92 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %91, i32 0, i32 12
  store i32* null, i32** %92, align 8
  %93 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %94 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %93, i32 0, i32 11
  store i64 0, i64* %94, align 8
  %95 = load i32, i32* %23, align 4
  %96 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %97 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %96, i32 0, i32 10
  store i32 %95, i32* %97, align 8
  %98 = load i8*, i8** %16, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %113

100:                                              ; preds = %47
  %101 = load i8*, i8** %16, align 8
  %102 = call i32 @get_unaligned_be64(i8* %101)
  %103 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %104 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %103, i32 0, i32 9
  store i32 %102, i32* %104, align 4
  %105 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %106 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %105, i32 0, i32 8
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @PR_REG_ISID_LEN, align 4
  %109 = load i8*, i8** %16, align 8
  %110 = call i32 @snprintf(i32 %107, i32 %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %109)
  %111 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %112 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %111, i32 0, i32 2
  store i32 1, i32* %112, align 8
  br label %113

113:                                              ; preds = %100, %47
  %114 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %115 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %114, i32 0, i32 7
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @PR_APTPL_MAX_IPORT_LEN, align 4
  %118 = load i8*, i8** %15, align 8
  %119 = call i32 @snprintf(i32 %116, i32 %117, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %118)
  %120 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %121 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @PR_APTPL_MAX_TPORT_LEN, align 4
  %124 = load i8*, i8** %18, align 8
  %125 = call i32 @snprintf(i32 %122, i32 %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %124)
  %126 = load i32, i32* %19, align 4
  %127 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %128 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %127, i32 0, i32 5
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* %21, align 4
  %130 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %131 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 4
  %132 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %24, align 8
  %133 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %132, i32 0, i32 4
  %134 = load %struct.t10_reservation*, %struct.t10_reservation** %13, align 8
  %135 = getelementptr inbounds %struct.t10_reservation, %struct.t10_reservation* %134, i32 0, i32 0
  %136 = call i32 @list_add_tail(i32* %133, i32* %135)
  %137 = load i32, i32* %21, align 4
  %138 = icmp ne i32 %137, 0
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %141 = call i32 @pr_debug(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i8* %140)
  store i32 0, i32* %12, align 4
  br label %142

142:                                              ; preds = %113, %43, %33
  %143 = load i32, i32* %12, align 4
  ret i32 %143
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.t10_pr_registration* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @get_unaligned_be64(i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @pr_debug(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
