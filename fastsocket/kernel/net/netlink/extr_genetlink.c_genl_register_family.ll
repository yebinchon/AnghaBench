; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_genetlink.c_genl_register_family.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_genetlink.c_genl_register_family.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_family = type { i64, i32, i32, i32*, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GENL_MIN_ID = common dso_local global i64 0, align 8
@GENL_MAX_ID = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@GENL_ID_GENERATE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@CTRL_CMD_NEWFAMILY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genl_register_family(%struct.genl_family* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.genl_family*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.genl_family* %0, %struct.genl_family** %3, align 8
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %4, align 4
  %8 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %9 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %14 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @GENL_MIN_ID, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %110

19:                                               ; preds = %12, %1
  %20 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %21 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @GENL_MAX_ID, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %110

26:                                               ; preds = %19
  %27 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %28 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %27, i32 0, i32 6
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %31 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %30, i32 0, i32 5
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = call i32 (...) @genl_lock()
  %34 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %35 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @genl_family_find_byname(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %26
  %40 = load i32, i32* @EEXIST, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %108

42:                                               ; preds = %26
  %43 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %44 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @genl_family_find_byid(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @EEXIST, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %108

51:                                               ; preds = %42
  %52 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %53 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @GENL_ID_GENERATE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %51
  %58 = call i64 (...) @genl_generate_id()
  store i64 %58, i64* %5, align 8
  %59 = load i64, i64* %5, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %108

64:                                               ; preds = %57
  %65 = load i64, i64* %5, align 8
  %66 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %67 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %64, %51
  %69 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %70 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %93

73:                                               ; preds = %68
  %74 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %75 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 8
  %80 = trunc i64 %79 to i32
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call i32* @kmalloc(i32 %80, i32 %81)
  %83 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %84 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %83, i32 0, i32 3
  store i32* %82, i32** %84, align 8
  %85 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %86 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %73
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %108

92:                                               ; preds = %73
  br label %96

93:                                               ; preds = %68
  %94 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %95 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %94, i32 0, i32 3
  store i32* null, i32** %95, align 8
  br label %96

96:                                               ; preds = %93, %92
  %97 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %98 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %97, i32 0, i32 2
  %99 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %100 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @genl_family_chain(i64 %101)
  %103 = call i32 @list_add_tail(i32* %98, i32 %102)
  %104 = call i32 (...) @genl_unlock()
  %105 = load i32, i32* @CTRL_CMD_NEWFAMILY, align 4
  %106 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %107 = call i32 @genl_ctrl_event(i32 %105, %struct.genl_family* %106)
  store i32 0, i32* %2, align 4
  br label %112

108:                                              ; preds = %89, %61, %48, %39
  %109 = call i32 (...) @genl_unlock()
  br label %110

110:                                              ; preds = %108, %25, %18
  %111 = load i32, i32* %4, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %110, %96
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @genl_lock(...) #1

declare dso_local i64 @genl_family_find_byname(i32) #1

declare dso_local i64 @genl_family_find_byid(i64) #1

declare dso_local i64 @genl_generate_id(...) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32) #1

declare dso_local i32 @genl_family_chain(i64) #1

declare dso_local i32 @genl_unlock(...) #1

declare dso_local i32 @genl_ctrl_event(i32, %struct.genl_family*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
