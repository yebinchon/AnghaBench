; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/hidp/extr_core.c_hidp_setup_hid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/hidp/extr_core.c_hidp_setup_hid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidp_session = type { i32*, %struct.hid_device*, %struct.TYPE_4__*, i32 }
%struct.hid_device = type { i32, i32*, %struct.TYPE_5__, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hidp_session* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.hidp_connadd_req = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@BUS_BLUETOOTH = common dso_local global i32 0, align 4
@hidp_hid_driver = common dso_local global i32 0, align 4
@hidp_output_raw_report = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidp_session*, %struct.hidp_connadd_req*)* @hidp_setup_hid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidp_setup_hid(%struct.hidp_session* %0, %struct.hidp_connadd_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hidp_session*, align 8
  %5 = alloca %struct.hidp_connadd_req*, align 8
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hidp_session* %0, %struct.hidp_session** %4, align 8
  store %struct.hidp_connadd_req* %1, %struct.hidp_connadd_req** %5, align 8
  %10 = load %struct.hidp_connadd_req*, %struct.hidp_connadd_req** %5, align 8
  %11 = getelementptr inbounds %struct.hidp_connadd_req, %struct.hidp_connadd_req* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32* @kzalloc(i32 %12, i32 %13)
  %15 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %16 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %15, i32 0, i32 0
  store i32* %14, i32** %16, align 8
  %17 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %18 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %144

24:                                               ; preds = %2
  %25 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %26 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.hidp_connadd_req*, %struct.hidp_connadd_req** %5, align 8
  %29 = getelementptr inbounds %struct.hidp_connadd_req, %struct.hidp_connadd_req* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.hidp_connadd_req*, %struct.hidp_connadd_req** %5, align 8
  %32 = getelementptr inbounds %struct.hidp_connadd_req, %struct.hidp_connadd_req* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @copy_from_user(i32* %27, i32 %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load i32, i32* @EFAULT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %9, align 4
  br label %136

39:                                               ; preds = %24
  %40 = load %struct.hidp_connadd_req*, %struct.hidp_connadd_req** %5, align 8
  %41 = getelementptr inbounds %struct.hidp_connadd_req, %struct.hidp_connadd_req* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %44 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = call %struct.hid_device* (...) @hid_allocate_device()
  store %struct.hid_device* %45, %struct.hid_device** %6, align 8
  %46 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %47 = call i64 @IS_ERR(%struct.hid_device* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %51 = call i32 @PTR_ERR(%struct.hid_device* %50)
  store i32 %51, i32* %9, align 4
  br label %136

52:                                               ; preds = %39
  %53 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %54 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %55 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %54, i32 0, i32 1
  store %struct.hid_device* %53, %struct.hid_device** %55, align 8
  %56 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %57 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %58 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %57, i32 0, i32 11
  store %struct.hidp_session* %56, %struct.hidp_session** %58, align 8
  %59 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %60 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %59, i32 0, i32 2
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call %struct.TYPE_6__* @bt_sk(i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = call i32 @baswap(i32* %7, i32* %65)
  %67 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %68 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %67, i32 0, i32 2
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.TYPE_6__* @bt_sk(i32 %71)
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = call i32 @baswap(i32* %8, i32* %73)
  %75 = load i32, i32* @BUS_BLUETOOTH, align 4
  %76 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %77 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %76, i32 0, i32 10
  store i32 %75, i32* %77, align 8
  %78 = load %struct.hidp_connadd_req*, %struct.hidp_connadd_req** %5, align 8
  %79 = getelementptr inbounds %struct.hidp_connadd_req, %struct.hidp_connadd_req* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %82 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %81, i32 0, i32 9
  store i32 %80, i32* %82, align 4
  %83 = load %struct.hidp_connadd_req*, %struct.hidp_connadd_req** %5, align 8
  %84 = getelementptr inbounds %struct.hidp_connadd_req, %struct.hidp_connadd_req* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %87 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %86, i32 0, i32 8
  store i32 %85, i32* %87, align 8
  %88 = load %struct.hidp_connadd_req*, %struct.hidp_connadd_req** %5, align 8
  %89 = getelementptr inbounds %struct.hidp_connadd_req, %struct.hidp_connadd_req* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %92 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %91, i32 0, i32 7
  store i32 %90, i32* %92, align 4
  %93 = load %struct.hidp_connadd_req*, %struct.hidp_connadd_req** %5, align 8
  %94 = getelementptr inbounds %struct.hidp_connadd_req, %struct.hidp_connadd_req* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %97 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %96, i32 0, i32 6
  store i32 %95, i32* %97, align 8
  %98 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %99 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.hidp_connadd_req*, %struct.hidp_connadd_req** %5, align 8
  %102 = getelementptr inbounds %struct.hidp_connadd_req, %struct.hidp_connadd_req* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @strncpy(i32 %100, i32 %103, i32 3)
  %105 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %106 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @batostr(i32* %7)
  %109 = call i32 @strncpy(i32 %107, i32 %108, i32 64)
  %110 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %111 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @batostr(i32* %8)
  %114 = call i32 @strncpy(i32 %112, i32 %113, i32 64)
  %115 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %116 = call i32 @hidp_get_device(%struct.hidp_session* %115)
  %117 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %118 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 8
  %120 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %121 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %120, i32 0, i32 1
  store i32* @hidp_hid_driver, i32** %121, align 8
  %122 = load i32, i32* @hidp_output_raw_report, align 4
  %123 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %124 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %126 = call i32 @hid_add_device(%struct.hid_device* %125)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %52
  br label %131

130:                                              ; preds = %52
  store i32 0, i32* %3, align 4
  br label %144

131:                                              ; preds = %129
  %132 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %133 = call i32 @hid_destroy_device(%struct.hid_device* %132)
  %134 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %135 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %134, i32 0, i32 1
  store %struct.hid_device* null, %struct.hid_device** %135, align 8
  br label %136

136:                                              ; preds = %131, %49, %36
  %137 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %138 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = call i32 @kfree(i32* %139)
  %141 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %142 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %141, i32 0, i32 0
  store i32* null, i32** %142, align 8
  %143 = load i32, i32* %9, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %136, %130, %21
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i64 @copy_from_user(i32*, i32, i32) #1

declare dso_local %struct.hid_device* @hid_allocate_device(...) #1

declare dso_local i64 @IS_ERR(%struct.hid_device*) #1

declare dso_local i32 @PTR_ERR(%struct.hid_device*) #1

declare dso_local i32 @baswap(i32*, i32*) #1

declare dso_local %struct.TYPE_6__* @bt_sk(i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @batostr(i32*) #1

declare dso_local i32 @hidp_get_device(%struct.hidp_session*) #1

declare dso_local i32 @hid_add_device(%struct.hid_device*) #1

declare dso_local i32 @hid_destroy_device(%struct.hid_device*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
