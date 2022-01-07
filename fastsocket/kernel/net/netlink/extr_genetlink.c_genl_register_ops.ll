; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_genetlink.c_genl_register_ops.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_genetlink.c_genl_register_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_family = type { i32 }
%struct.genl_ops = type { i32, i32, i64, i32*, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@GENL_CMD_CAP_DUMP = common dso_local global i32 0, align 4
@GENL_CMD_CAP_DO = common dso_local global i32 0, align 4
@GENL_CMD_CAP_HASPOL = common dso_local global i32 0, align 4
@CTRL_CMD_NEWOPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genl_register_ops(%struct.genl_family* %0, %struct.genl_ops* %1) #0 {
  %3 = alloca %struct.genl_family*, align 8
  %4 = alloca %struct.genl_ops*, align 8
  %5 = alloca i32, align 4
  store %struct.genl_family* %0, %struct.genl_family** %3, align 8
  store %struct.genl_ops* %1, %struct.genl_ops** %4, align 8
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.genl_ops*, %struct.genl_ops** %4, align 8
  %9 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %8, i32 0, i32 4
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.genl_ops*, %struct.genl_ops** %4, align 8
  %14 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %72

18:                                               ; preds = %12, %2
  %19 = load %struct.genl_ops*, %struct.genl_ops** %4, align 8
  %20 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %23 = call i64 @genl_get_cmd(i32 %21, %struct.genl_family* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @EEXIST, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %72

28:                                               ; preds = %18
  %29 = load %struct.genl_ops*, %struct.genl_ops** %4, align 8
  %30 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32, i32* @GENL_CMD_CAP_DUMP, align 4
  %35 = load %struct.genl_ops*, %struct.genl_ops** %4, align 8
  %36 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %33, %28
  %40 = load %struct.genl_ops*, %struct.genl_ops** %4, align 8
  %41 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i32, i32* @GENL_CMD_CAP_DO, align 4
  %46 = load %struct.genl_ops*, %struct.genl_ops** %4, align 8
  %47 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %44, %39
  %51 = load %struct.genl_ops*, %struct.genl_ops** %4, align 8
  %52 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i32, i32* @GENL_CMD_CAP_HASPOL, align 4
  %57 = load %struct.genl_ops*, %struct.genl_ops** %4, align 8
  %58 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %55, %50
  %62 = call i32 (...) @genl_lock()
  %63 = load %struct.genl_ops*, %struct.genl_ops** %4, align 8
  %64 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %63, i32 0, i32 0
  %65 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %66 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %65, i32 0, i32 0
  %67 = call i32 @list_add_tail(i32* %64, i32* %66)
  %68 = call i32 (...) @genl_unlock()
  %69 = load i32, i32* @CTRL_CMD_NEWOPS, align 4
  %70 = load %struct.genl_ops*, %struct.genl_ops** %4, align 8
  %71 = call i32 @genl_ctrl_event(i32 %69, %struct.genl_ops* %70)
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %61, %25, %17
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i64 @genl_get_cmd(i32, %struct.genl_family*) #1

declare dso_local i32 @genl_lock(...) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @genl_unlock(...) #1

declare dso_local i32 @genl_ctrl_event(i32, %struct.genl_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
