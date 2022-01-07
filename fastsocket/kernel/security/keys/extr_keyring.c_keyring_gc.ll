; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyring.c_keyring_gc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyring.c_keyring_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.keyring_list = type { i32, i32, i32, %struct.key**, i64 }

@.str = private unnamed_addr constant [8 x i8] c"{%x,%s}\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@KEYQUOTA_LINK_BYTES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c" [yes]\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c" [discard]\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" [no dead]\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c" [no_klist]\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c" [oom]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @keyring_gc(%struct.key* %0, i32 %1) #0 {
  %3 = alloca %struct.key*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.keyring_list*, align 8
  %6 = alloca %struct.keyring_list*, align 8
  %7 = alloca %struct.key*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.key* %0, %struct.key** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.key*, %struct.key** %3, align 8
  %12 = call i32 @key_serial(%struct.key* %11)
  %13 = load %struct.key*, %struct.key** %3, align 8
  %14 = getelementptr inbounds %struct.key, %struct.key* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @kenter(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15)
  %17 = load %struct.key*, %struct.key** %3, align 8
  %18 = getelementptr inbounds %struct.key, %struct.key* %17, i32 0, i32 0
  %19 = call i32 @down_write(i32* %18)
  %20 = load %struct.key*, %struct.key** %3, align 8
  %21 = call %struct.keyring_list* @rcu_dereference_locked_keyring(%struct.key* %20)
  store %struct.keyring_list* %21, %struct.keyring_list** %5, align 8
  %22 = load %struct.keyring_list*, %struct.keyring_list** %5, align 8
  %23 = icmp ne %struct.keyring_list* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %170

25:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  %26 = load %struct.keyring_list*, %struct.keyring_list** %5, align 8
  %27 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %48, %25
  %31 = load i32, i32* %8, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %30
  %34 = load %struct.keyring_list*, %struct.keyring_list** %5, align 8
  %35 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %34, i32 0, i32 3
  %36 = load %struct.key**, %struct.key*** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.key*, %struct.key** %36, i64 %38
  %40 = load %struct.key*, %struct.key** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @key_is_dead(%struct.key* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %44, %33
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %8, align 4
  br label %30

51:                                               ; preds = %30
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.keyring_list*, %struct.keyring_list** %5, align 8
  %54 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %165

58:                                               ; preds = %51
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @roundup(i32 %59, i32 4)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 8
  %64 = add i64 32, %63
  %65 = trunc i64 %64 to i32
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call %struct.keyring_list* @kmalloc(i32 %65, i32 %66)
  store %struct.keyring_list* %67, %struct.keyring_list** %6, align 8
  %68 = load %struct.keyring_list*, %struct.keyring_list** %6, align 8
  %69 = icmp ne %struct.keyring_list* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %58
  br label %175

71:                                               ; preds = %58
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.keyring_list*, %struct.keyring_list** %6, align 8
  %74 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.keyring_list*, %struct.keyring_list** %6, align 8
  %76 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %75, i32 0, i32 0
  store i32 0, i32* %76, align 8
  %77 = load %struct.keyring_list*, %struct.keyring_list** %6, align 8
  %78 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %77, i32 0, i32 4
  store i64 0, i64* %78, align 8
  store i32 0, i32* %9, align 4
  %79 = load %struct.keyring_list*, %struct.keyring_list** %5, align 8
  %80 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sub nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %114, %71
  %84 = load i32, i32* %8, align 4
  %85 = icmp sge i32 %84, 0
  br i1 %85, label %86, label %117

86:                                               ; preds = %83
  %87 = load %struct.keyring_list*, %struct.keyring_list** %5, align 8
  %88 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %87, i32 0, i32 3
  %89 = load %struct.key**, %struct.key*** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.key*, %struct.key** %89, i64 %91
  %93 = load %struct.key*, %struct.key** %92, align 8
  store %struct.key* %93, %struct.key** %7, align 8
  %94 = load %struct.key*, %struct.key** %7, align 8
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @key_is_dead(%struct.key* %94, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %113, label %98

98:                                               ; preds = %86
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp sge i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %154

103:                                              ; preds = %98
  %104 = load %struct.key*, %struct.key** %7, align 8
  %105 = call %struct.key* @key_get(%struct.key* %104)
  %106 = load %struct.keyring_list*, %struct.keyring_list** %6, align 8
  %107 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %106, i32 0, i32 3
  %108 = load %struct.key**, %struct.key*** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds %struct.key*, %struct.key** %108, i64 %111
  store %struct.key* %105, %struct.key** %112, align 8
  br label %113

113:                                              ; preds = %103, %86
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %8, align 4
  br label %83

117:                                              ; preds = %83
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.keyring_list*, %struct.keyring_list** %6, align 8
  %120 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load %struct.key*, %struct.key** %3, align 8
  %122 = load i32, i32* @KEYQUOTA_LINK_BYTES, align 4
  %123 = load i32, i32* %9, align 4
  %124 = mul nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = add i64 32, %125
  %127 = trunc i64 %126 to i32
  %128 = call i32 @key_payload_reserve(%struct.key* %121, i32 %127)
  %129 = load i32, i32* %9, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %117
  %132 = load %struct.key*, %struct.key** %3, align 8
  %133 = getelementptr inbounds %struct.key, %struct.key* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @rcu_assign_pointer(i32 %135, %struct.keyring_list* null)
  %137 = load %struct.keyring_list*, %struct.keyring_list** %6, align 8
  %138 = call i32 @kfree(%struct.keyring_list* %137)
  br label %146

139:                                              ; preds = %117
  %140 = load %struct.key*, %struct.key** %3, align 8
  %141 = getelementptr inbounds %struct.key, %struct.key* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.keyring_list*, %struct.keyring_list** %6, align 8
  %145 = call i32 @rcu_assign_pointer(i32 %143, %struct.keyring_list* %144)
  br label %146

146:                                              ; preds = %139, %131
  %147 = load %struct.key*, %struct.key** %3, align 8
  %148 = getelementptr inbounds %struct.key, %struct.key* %147, i32 0, i32 0
  %149 = call i32 @up_write(i32* %148)
  %150 = load %struct.keyring_list*, %struct.keyring_list** %5, align 8
  %151 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %150, i32 0, i32 2
  %152 = call i32 @call_rcu(i32* %151, i32 (i32*)* @keyring_clear_rcu_disposal)
  %153 = call i32 @kleave(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %180

154:                                              ; preds = %102
  %155 = load i32, i32* %9, align 4
  %156 = load %struct.keyring_list*, %struct.keyring_list** %6, align 8
  %157 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 8
  %158 = load %struct.keyring_list*, %struct.keyring_list** %6, align 8
  %159 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %158, i32 0, i32 2
  %160 = call i32 @keyring_clear_rcu_disposal(i32* %159)
  %161 = load %struct.key*, %struct.key** %3, align 8
  %162 = getelementptr inbounds %struct.key, %struct.key* %161, i32 0, i32 0
  %163 = call i32 @up_write(i32* %162)
  %164 = call i32 @kleave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %180

165:                                              ; preds = %57
  %166 = load %struct.key*, %struct.key** %3, align 8
  %167 = getelementptr inbounds %struct.key, %struct.key* %166, i32 0, i32 0
  %168 = call i32 @up_write(i32* %167)
  %169 = call i32 @kleave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %180

170:                                              ; preds = %24
  %171 = load %struct.key*, %struct.key** %3, align 8
  %172 = getelementptr inbounds %struct.key, %struct.key* %171, i32 0, i32 0
  %173 = call i32 @up_write(i32* %172)
  %174 = call i32 @kleave(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %180

175:                                              ; preds = %70
  %176 = load %struct.key*, %struct.key** %3, align 8
  %177 = getelementptr inbounds %struct.key, %struct.key* %176, i32 0, i32 0
  %178 = call i32 @up_write(i32* %177)
  %179 = call i32 @kleave(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %180

180:                                              ; preds = %175, %170, %165, %154, %146
  ret void
}

declare dso_local i32 @kenter(i8*, i32, i32) #1

declare dso_local i32 @key_serial(%struct.key*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.keyring_list* @rcu_dereference_locked_keyring(%struct.key*) #1

declare dso_local i32 @key_is_dead(%struct.key*, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local %struct.keyring_list* @kmalloc(i32, i32) #1

declare dso_local %struct.key* @key_get(%struct.key*) #1

declare dso_local i32 @key_payload_reserve(%struct.key*, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.keyring_list*) #1

declare dso_local i32 @kfree(%struct.keyring_list*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @call_rcu(i32*, i32 (i32*)*) #1

declare dso_local i32 @keyring_clear_rcu_disposal(i32*) #1

declare dso_local i32 @kleave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
