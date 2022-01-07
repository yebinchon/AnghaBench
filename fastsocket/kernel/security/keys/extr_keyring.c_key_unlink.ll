; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyring.c_key_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyring.c_key_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32, %struct.TYPE_2__, i64, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.keyring_list = type { i32, i32, i32, i32, %struct.key** }

@ENOTDIR = common dso_local global i32 0, align 4
@key_type_keyring = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KEYQUOTA_LINK_BYTES = common dso_local global i64 0, align 8
@keyring_unlink_rcu_disposal = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @key_unlink(%struct.key* %0, %struct.key* %1) #0 {
  %3 = alloca %struct.key*, align 8
  %4 = alloca %struct.key*, align 8
  %5 = alloca %struct.keyring_list*, align 8
  %6 = alloca %struct.keyring_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.key* %0, %struct.key** %3, align 8
  store %struct.key* %1, %struct.key** %4, align 8
  %9 = load %struct.key*, %struct.key** %3, align 8
  %10 = call i32 @key_check(%struct.key* %9)
  %11 = load %struct.key*, %struct.key** %4, align 8
  %12 = call i32 @key_check(%struct.key* %11)
  %13 = load i32, i32* @ENOTDIR, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.key*, %struct.key** %3, align 8
  %16 = getelementptr inbounds %struct.key, %struct.key* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, @key_type_keyring
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %151

20:                                               ; preds = %2
  %21 = load %struct.key*, %struct.key** %3, align 8
  %22 = getelementptr inbounds %struct.key, %struct.key* %21, i32 0, i32 0
  %23 = call i32 @down_write(i32* %22)
  %24 = load %struct.key*, %struct.key** %3, align 8
  %25 = call %struct.keyring_list* @rcu_dereference_locked_keyring(%struct.key* %24)
  store %struct.keyring_list* %25, %struct.keyring_list** %5, align 8
  %26 = load %struct.keyring_list*, %struct.keyring_list** %5, align 8
  %27 = icmp ne %struct.keyring_list* %26, null
  br i1 %27, label %28, label %51

28:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %47, %28
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.keyring_list*, %struct.keyring_list** %5, align 8
  %32 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %29
  %36 = load %struct.keyring_list*, %struct.keyring_list** %5, align 8
  %37 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %36, i32 0, i32 4
  %38 = load %struct.key**, %struct.key*** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.key*, %struct.key** %38, i64 %40
  %42 = load %struct.key*, %struct.key** %41, align 8
  %43 = load %struct.key*, %struct.key** %4, align 8
  %44 = icmp eq %struct.key* %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %57

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %29

50:                                               ; preds = %29
  br label %51

51:                                               ; preds = %50, %20
  %52 = load %struct.key*, %struct.key** %3, align 8
  %53 = getelementptr inbounds %struct.key, %struct.key* %52, i32 0, i32 0
  %54 = call i32 @up_write(i32* %53)
  %55 = load i32, i32* @ENOENT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %8, align 4
  br label %151

57:                                               ; preds = %45
  %58 = load %struct.keyring_list*, %struct.keyring_list** %5, align 8
  %59 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 8, %61
  %63 = add i64 24, %62
  %64 = trunc i64 %63 to i32
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call %struct.keyring_list* @kmalloc(i32 %64, i32 %65)
  store %struct.keyring_list* %66, %struct.keyring_list** %6, align 8
  %67 = load %struct.keyring_list*, %struct.keyring_list** %6, align 8
  %68 = icmp ne %struct.keyring_list* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %57
  br label %153

70:                                               ; preds = %57
  %71 = load %struct.keyring_list*, %struct.keyring_list** %5, align 8
  %72 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.keyring_list*, %struct.keyring_list** %6, align 8
  %75 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.keyring_list*, %struct.keyring_list** %5, align 8
  %77 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %78, 1
  %80 = load %struct.keyring_list*, %struct.keyring_list** %6, align 8
  %81 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* %7, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %70
  %85 = load %struct.keyring_list*, %struct.keyring_list** %6, align 8
  %86 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %85, i32 0, i32 4
  %87 = load %struct.key**, %struct.key*** %86, align 8
  %88 = getelementptr inbounds %struct.key*, %struct.key** %87, i64 0
  %89 = load %struct.keyring_list*, %struct.keyring_list** %5, align 8
  %90 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %89, i32 0, i32 4
  %91 = load %struct.key**, %struct.key*** %90, align 8
  %92 = getelementptr inbounds %struct.key*, %struct.key** %91, i64 0
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 8
  %96 = trunc i64 %95 to i32
  %97 = call i32 @memcpy(%struct.key** %88, %struct.key** %92, i32 %96)
  br label %98

98:                                               ; preds = %84, %70
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.keyring_list*, %struct.keyring_list** %6, align 8
  %101 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %127

104:                                              ; preds = %98
  %105 = load %struct.keyring_list*, %struct.keyring_list** %6, align 8
  %106 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %105, i32 0, i32 4
  %107 = load %struct.key**, %struct.key*** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.key*, %struct.key** %107, i64 %109
  %111 = load %struct.keyring_list*, %struct.keyring_list** %5, align 8
  %112 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %111, i32 0, i32 4
  %113 = load %struct.key**, %struct.key*** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.key*, %struct.key** %113, i64 %116
  %118 = load %struct.keyring_list*, %struct.keyring_list** %6, align 8
  %119 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sub nsw i32 %120, %121
  %123 = sext i32 %122 to i64
  %124 = mul i64 %123, 8
  %125 = trunc i64 %124 to i32
  %126 = call i32 @memcpy(%struct.key** %110, %struct.key** %117, i32 %125)
  br label %127

127:                                              ; preds = %104, %98
  %128 = load %struct.key*, %struct.key** %3, align 8
  %129 = load %struct.key*, %struct.key** %3, align 8
  %130 = getelementptr inbounds %struct.key, %struct.key* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @KEYQUOTA_LINK_BYTES, align 8
  %133 = sub nsw i64 %131, %132
  %134 = call i32 @key_payload_reserve(%struct.key* %128, i64 %133)
  %135 = load %struct.key*, %struct.key** %3, align 8
  %136 = getelementptr inbounds %struct.key, %struct.key* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.keyring_list*, %struct.keyring_list** %6, align 8
  %140 = call i32 @rcu_assign_pointer(i32 %138, %struct.keyring_list* %139)
  %141 = load %struct.key*, %struct.key** %3, align 8
  %142 = getelementptr inbounds %struct.key, %struct.key* %141, i32 0, i32 0
  %143 = call i32 @up_write(i32* %142)
  %144 = load i32, i32* %7, align 4
  %145 = load %struct.keyring_list*, %struct.keyring_list** %5, align 8
  %146 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 8
  %147 = load %struct.keyring_list*, %struct.keyring_list** %5, align 8
  %148 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %147, i32 0, i32 3
  %149 = load i32, i32* @keyring_unlink_rcu_disposal, align 4
  %150 = call i32 @call_rcu(i32* %148, i32 %149)
  store i32 0, i32* %8, align 4
  br label %151

151:                                              ; preds = %153, %127, %51, %19
  %152 = load i32, i32* %8, align 4
  ret i32 %152

153:                                              ; preds = %69
  %154 = load i32, i32* @ENOMEM, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %8, align 4
  %156 = load %struct.key*, %struct.key** %3, align 8
  %157 = getelementptr inbounds %struct.key, %struct.key* %156, i32 0, i32 0
  %158 = call i32 @up_write(i32* %157)
  br label %151
}

declare dso_local i32 @key_check(%struct.key*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.keyring_list* @rcu_dereference_locked_keyring(%struct.key*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local %struct.keyring_list* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.key**, %struct.key**, i32) #1

declare dso_local i32 @key_payload_reserve(%struct.key*, i64) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.keyring_list*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
