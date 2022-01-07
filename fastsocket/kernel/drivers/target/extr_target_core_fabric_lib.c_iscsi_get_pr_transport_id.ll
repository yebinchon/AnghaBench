; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_fabric_lib.c_iscsi_get_pr_transport_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_fabric_lib.c_iscsi_get_pr_transport_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_portal_group = type { i32 }
%struct.se_node_acl = type { i8*, i32 }
%struct.t10_pr_registration = type { i8*, i64 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @iscsi_get_pr_transport_id(%struct.se_portal_group* %0, %struct.se_node_acl* %1, %struct.t10_pr_registration* %2, i32* %3, i8* %4) #0 {
  %6 = alloca %struct.se_portal_group*, align 8
  %7 = alloca %struct.se_node_acl*, align 8
  %8 = alloca %struct.t10_pr_registration*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.se_portal_group* %0, %struct.se_portal_group** %6, align 8
  store %struct.se_node_acl* %1, %struct.se_node_acl** %7, align 8
  store %struct.t10_pr_registration* %2, %struct.t10_pr_registration** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* %4, i8** %10, align 8
  store i64 4, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %14 = load %struct.se_node_acl*, %struct.se_node_acl** %7, align 8
  %15 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %14, i32 0, i32 1
  %16 = call i32 @spin_lock_irq(i32* %15)
  %17 = load i8*, i8** %10, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 5, i8* %18, align 1
  %19 = load i8*, i8** %10, align 8
  %20 = load i64, i64* %11, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load %struct.se_node_acl*, %struct.se_node_acl** %7, align 8
  %23 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @sprintf(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %24)
  store i64 %25, i64* %13, align 8
  %26 = load i64, i64* %13, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %13, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %161

31:                                               ; preds = %5
  %32 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %8, align 8
  %33 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %161

36:                                               ; preds = %31
  %37 = load i8*, i8** %10, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = or i32 %40, 64
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %38, align 1
  %43 = load i8*, i8** %10, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* %13, align 8
  %46 = add i64 %44, %45
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  store i8 44, i8* %47, align 1
  %48 = load i64, i64* %11, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %11, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %13, align 8
  %53 = add i64 %51, %52
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  store i8 105, i8* %54, align 1
  %55 = load i64, i64* %11, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %11, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %13, align 8
  %60 = add i64 %58, %59
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  store i8 44, i8* %61, align 1
  %62 = load i64, i64* %11, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %11, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* %13, align 8
  %67 = add i64 %65, %66
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  store i8 48, i8* %68, align 1
  %69 = load i64, i64* %11, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %11, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* %13, align 8
  %74 = add i64 %72, %73
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  store i8 120, i8* %75, align 1
  %76 = load i64, i64* %11, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %11, align 8
  %78 = load i64, i64* %13, align 8
  %79 = add i64 %78, 5
  store i64 %79, i64* %13, align 8
  %80 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %8, align 8
  %81 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  %84 = load i8, i8* %83, align 1
  %85 = load i8*, i8** %10, align 8
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* %13, align 8
  %88 = add i64 %86, %87
  %89 = getelementptr inbounds i8, i8* %85, i64 %88
  store i8 %84, i8* %89, align 1
  %90 = load i64, i64* %11, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %11, align 8
  %92 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %8, align 8
  %93 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = load i8, i8* %95, align 1
  %97 = load i8*, i8** %10, align 8
  %98 = load i64, i64* %11, align 8
  %99 = load i64, i64* %13, align 8
  %100 = add i64 %98, %99
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  store i8 %96, i8* %101, align 1
  %102 = load i64, i64* %11, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %11, align 8
  %104 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %8, align 8
  %105 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 2
  %108 = load i8, i8* %107, align 1
  %109 = load i8*, i8** %10, align 8
  %110 = load i64, i64* %11, align 8
  %111 = load i64, i64* %13, align 8
  %112 = add i64 %110, %111
  %113 = getelementptr inbounds i8, i8* %109, i64 %112
  store i8 %108, i8* %113, align 1
  %114 = load i64, i64* %11, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %11, align 8
  %116 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %8, align 8
  %117 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 3
  %120 = load i8, i8* %119, align 1
  %121 = load i8*, i8** %10, align 8
  %122 = load i64, i64* %11, align 8
  %123 = load i64, i64* %13, align 8
  %124 = add i64 %122, %123
  %125 = getelementptr inbounds i8, i8* %121, i64 %124
  store i8 %120, i8* %125, align 1
  %126 = load i64, i64* %11, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %11, align 8
  %128 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %8, align 8
  %129 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 4
  %132 = load i8, i8* %131, align 1
  %133 = load i8*, i8** %10, align 8
  %134 = load i64, i64* %11, align 8
  %135 = load i64, i64* %13, align 8
  %136 = add i64 %134, %135
  %137 = getelementptr inbounds i8, i8* %133, i64 %136
  store i8 %132, i8* %137, align 1
  %138 = load i64, i64* %11, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %11, align 8
  %140 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %8, align 8
  %141 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 5
  %144 = load i8, i8* %143, align 1
  %145 = load i8*, i8** %10, align 8
  %146 = load i64, i64* %11, align 8
  %147 = load i64, i64* %13, align 8
  %148 = add i64 %146, %147
  %149 = getelementptr inbounds i8, i8* %145, i64 %148
  store i8 %144, i8* %149, align 1
  %150 = load i64, i64* %11, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %11, align 8
  %152 = load i8*, i8** %10, align 8
  %153 = load i64, i64* %11, align 8
  %154 = load i64, i64* %13, align 8
  %155 = add i64 %153, %154
  %156 = getelementptr inbounds i8, i8* %152, i64 %155
  store i8 0, i8* %156, align 1
  %157 = load i64, i64* %11, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %11, align 8
  %159 = load i64, i64* %13, align 8
  %160 = add i64 %159, 7
  store i64 %160, i64* %13, align 8
  br label %161

161:                                              ; preds = %36, %31, %5
  %162 = load %struct.se_node_acl*, %struct.se_node_acl** %7, align 8
  %163 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %162, i32 0, i32 1
  %164 = call i32 @spin_unlock_irq(i32* %163)
  %165 = load i64, i64* %13, align 8
  %166 = sub i64 0, %165
  %167 = and i64 %166, 3
  store i64 %167, i64* %12, align 8
  %168 = load i64, i64* %12, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %161
  %171 = load i64, i64* %12, align 8
  %172 = load i64, i64* %13, align 8
  %173 = add i64 %172, %171
  store i64 %173, i64* %13, align 8
  br label %174

174:                                              ; preds = %170, %161
  %175 = load i64, i64* %13, align 8
  %176 = lshr i64 %175, 8
  %177 = and i64 %176, 255
  %178 = trunc i64 %177 to i8
  %179 = load i8*, i8** %10, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 2
  store i8 %178, i8* %180, align 1
  %181 = load i64, i64* %13, align 8
  %182 = and i64 %181, 255
  %183 = trunc i64 %182 to i8
  %184 = load i8*, i8** %10, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 3
  store i8 %183, i8* %185, align 1
  %186 = load i64, i64* %13, align 8
  %187 = add i64 %186, 4
  store i64 %187, i64* %13, align 8
  %188 = load i64, i64* %13, align 8
  ret i64 %188
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
