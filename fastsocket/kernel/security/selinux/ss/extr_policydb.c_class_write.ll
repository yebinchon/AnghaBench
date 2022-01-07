; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_class_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_class_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.class_datum = type { i8*, i64, %struct.constraint_node*, %struct.constraint_node*, %struct.TYPE_3__ }
%struct.constraint_node = type { %struct.constraint_node* }
%struct.TYPE_3__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.policy_data = type { %struct.policydb*, i8* }
%struct.policydb = type { i32 }

@perm_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @class_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @class_write(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.class_datum*, align 8
  %10 = alloca %struct.policy_data*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.policydb*, align 8
  %13 = alloca %struct.constraint_node*, align 8
  %14 = alloca [6 x i8], align 1
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %19 = load i8*, i8** %5, align 8
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.class_datum*
  store %struct.class_datum* %21, %struct.class_datum** %9, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to %struct.policy_data*
  store %struct.policy_data* %23, %struct.policy_data** %10, align 8
  %24 = load %struct.policy_data*, %struct.policy_data** %10, align 8
  %25 = getelementptr inbounds %struct.policy_data, %struct.policy_data* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %11, align 8
  %27 = load %struct.policy_data*, %struct.policy_data** %10, align 8
  %28 = getelementptr inbounds %struct.policy_data, %struct.policy_data* %27, i32 0, i32 0
  %29 = load %struct.policydb*, %struct.policydb** %28, align 8
  store %struct.policydb* %29, %struct.policydb** %12, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i64 @strlen(i8* %30)
  store i64 %31, i64* %16, align 8
  %32 = load %struct.class_datum*, %struct.class_datum** %9, align 8
  %33 = getelementptr inbounds %struct.class_datum, %struct.class_datum* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %3
  %37 = load %struct.class_datum*, %struct.class_datum** %9, align 8
  %38 = getelementptr inbounds %struct.class_datum, %struct.class_datum* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @strlen(i8* %39)
  store i64 %40, i64* %17, align 8
  br label %42

41:                                               ; preds = %3
  store i64 0, i64* %17, align 8
  br label %42

42:                                               ; preds = %41, %36
  store i64 0, i64* %15, align 8
  %43 = load %struct.class_datum*, %struct.class_datum** %9, align 8
  %44 = getelementptr inbounds %struct.class_datum, %struct.class_datum* %43, i32 0, i32 3
  %45 = load %struct.constraint_node*, %struct.constraint_node** %44, align 8
  store %struct.constraint_node* %45, %struct.constraint_node** %13, align 8
  br label %46

46:                                               ; preds = %52, %42
  %47 = load %struct.constraint_node*, %struct.constraint_node** %13, align 8
  %48 = icmp ne %struct.constraint_node* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load i64, i64* %15, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %15, align 8
  br label %52

52:                                               ; preds = %49
  %53 = load %struct.constraint_node*, %struct.constraint_node** %13, align 8
  %54 = getelementptr inbounds %struct.constraint_node, %struct.constraint_node* %53, i32 0, i32 0
  %55 = load %struct.constraint_node*, %struct.constraint_node** %54, align 8
  store %struct.constraint_node* %55, %struct.constraint_node** %13, align 8
  br label %46

56:                                               ; preds = %46
  %57 = load i64, i64* %16, align 8
  %58 = call signext i8 @cpu_to_le32(i64 %57)
  %59 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 0
  store i8 %58, i8* %59, align 1
  %60 = load i64, i64* %17, align 8
  %61 = call signext i8 @cpu_to_le32(i64 %60)
  %62 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 1
  store i8 %61, i8* %62, align 1
  %63 = load %struct.class_datum*, %struct.class_datum** %9, align 8
  %64 = getelementptr inbounds %struct.class_datum, %struct.class_datum* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call signext i8 @cpu_to_le32(i64 %65)
  %67 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 2
  store i8 %66, i8* %67, align 1
  %68 = load %struct.class_datum*, %struct.class_datum** %9, align 8
  %69 = getelementptr inbounds %struct.class_datum, %struct.class_datum* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call signext i8 @cpu_to_le32(i64 %71)
  %73 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 3
  store i8 %72, i8* %73, align 1
  %74 = load %struct.class_datum*, %struct.class_datum** %9, align 8
  %75 = getelementptr inbounds %struct.class_datum, %struct.class_datum* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = icmp ne %struct.TYPE_4__* %77, null
  br i1 %78, label %79, label %88

79:                                               ; preds = %56
  %80 = load %struct.class_datum*, %struct.class_datum** %9, align 8
  %81 = getelementptr inbounds %struct.class_datum, %struct.class_datum* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call signext i8 @cpu_to_le32(i64 %85)
  %87 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 4
  store i8 %86, i8* %87, align 1
  br label %90

88:                                               ; preds = %56
  %89 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 4
  store i8 0, i8* %89, align 1
  br label %90

90:                                               ; preds = %88, %79
  %91 = load i64, i64* %15, align 8
  %92 = call signext i8 @cpu_to_le32(i64 %91)
  %93 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 5
  store i8 %92, i8* %93, align 1
  %94 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 0
  %95 = load i8*, i8** %11, align 8
  %96 = call i32 @put_entry(i8* %94, i32 8, i32 6, i8* %95)
  store i32 %96, i32* %18, align 4
  %97 = load i32, i32* %18, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %90
  %100 = load i32, i32* %18, align 4
  store i32 %100, i32* %4, align 4
  br label %189

101:                                              ; preds = %90
  %102 = load i8*, i8** %8, align 8
  %103 = load i64, i64* %16, align 8
  %104 = trunc i64 %103 to i32
  %105 = load i8*, i8** %11, align 8
  %106 = call i32 @put_entry(i8* %102, i32 1, i32 %104, i8* %105)
  store i32 %106, i32* %18, align 4
  %107 = load i32, i32* %18, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  %110 = load i32, i32* %18, align 4
  store i32 %110, i32* %4, align 4
  br label %189

111:                                              ; preds = %101
  %112 = load %struct.class_datum*, %struct.class_datum** %9, align 8
  %113 = getelementptr inbounds %struct.class_datum, %struct.class_datum* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %129

116:                                              ; preds = %111
  %117 = load %struct.class_datum*, %struct.class_datum** %9, align 8
  %118 = getelementptr inbounds %struct.class_datum, %struct.class_datum* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = load i64, i64* %17, align 8
  %121 = trunc i64 %120 to i32
  %122 = load i8*, i8** %11, align 8
  %123 = call i32 @put_entry(i8* %119, i32 1, i32 %121, i8* %122)
  store i32 %123, i32* %18, align 4
  %124 = load i32, i32* %18, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %116
  %127 = load i32, i32* %18, align 4
  store i32 %127, i32* %4, align 4
  br label %189

128:                                              ; preds = %116
  br label %129

129:                                              ; preds = %128, %111
  %130 = load %struct.class_datum*, %struct.class_datum** %9, align 8
  %131 = getelementptr inbounds %struct.class_datum, %struct.class_datum* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = load i32, i32* @perm_write, align 4
  %135 = load i8*, i8** %11, align 8
  %136 = call i32 @hashtab_map(%struct.TYPE_4__* %133, i32 %134, i8* %135)
  store i32 %136, i32* %18, align 4
  %137 = load i32, i32* %18, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %129
  %140 = load i32, i32* %18, align 4
  store i32 %140, i32* %4, align 4
  br label %189

141:                                              ; preds = %129
  %142 = load %struct.policydb*, %struct.policydb** %12, align 8
  %143 = load %struct.class_datum*, %struct.class_datum** %9, align 8
  %144 = getelementptr inbounds %struct.class_datum, %struct.class_datum* %143, i32 0, i32 3
  %145 = load %struct.constraint_node*, %struct.constraint_node** %144, align 8
  %146 = load i8*, i8** %11, align 8
  %147 = call i32 @write_cons_helper(%struct.policydb* %142, %struct.constraint_node* %145, i8* %146)
  store i32 %147, i32* %18, align 4
  %148 = load i32, i32* %18, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %141
  %151 = load i32, i32* %18, align 4
  store i32 %151, i32* %4, align 4
  br label %189

152:                                              ; preds = %141
  store i64 0, i64* %15, align 8
  %153 = load %struct.class_datum*, %struct.class_datum** %9, align 8
  %154 = getelementptr inbounds %struct.class_datum, %struct.class_datum* %153, i32 0, i32 2
  %155 = load %struct.constraint_node*, %struct.constraint_node** %154, align 8
  store %struct.constraint_node* %155, %struct.constraint_node** %13, align 8
  br label %156

156:                                              ; preds = %162, %152
  %157 = load %struct.constraint_node*, %struct.constraint_node** %13, align 8
  %158 = icmp ne %struct.constraint_node* %157, null
  br i1 %158, label %159, label %166

159:                                              ; preds = %156
  %160 = load i64, i64* %15, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %15, align 8
  br label %162

162:                                              ; preds = %159
  %163 = load %struct.constraint_node*, %struct.constraint_node** %13, align 8
  %164 = getelementptr inbounds %struct.constraint_node, %struct.constraint_node* %163, i32 0, i32 0
  %165 = load %struct.constraint_node*, %struct.constraint_node** %164, align 8
  store %struct.constraint_node* %165, %struct.constraint_node** %13, align 8
  br label %156

166:                                              ; preds = %156
  %167 = load i64, i64* %15, align 8
  %168 = call signext i8 @cpu_to_le32(i64 %167)
  %169 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 0
  store i8 %168, i8* %169, align 1
  %170 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 0
  %171 = load i8*, i8** %11, align 8
  %172 = call i32 @put_entry(i8* %170, i32 8, i32 1, i8* %171)
  store i32 %172, i32* %18, align 4
  %173 = load i32, i32* %18, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %166
  %176 = load i32, i32* %18, align 4
  store i32 %176, i32* %4, align 4
  br label %189

177:                                              ; preds = %166
  %178 = load %struct.policydb*, %struct.policydb** %12, align 8
  %179 = load %struct.class_datum*, %struct.class_datum** %9, align 8
  %180 = getelementptr inbounds %struct.class_datum, %struct.class_datum* %179, i32 0, i32 2
  %181 = load %struct.constraint_node*, %struct.constraint_node** %180, align 8
  %182 = load i8*, i8** %11, align 8
  %183 = call i32 @write_cons_helper(%struct.policydb* %178, %struct.constraint_node* %181, i8* %182)
  store i32 %183, i32* %18, align 4
  %184 = load i32, i32* %18, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %177
  %187 = load i32, i32* %18, align 4
  store i32 %187, i32* %4, align 4
  br label %189

188:                                              ; preds = %177
  store i32 0, i32* %4, align 4
  br label %189

189:                                              ; preds = %188, %186, %175, %150, %139, %126, %109, %99
  %190 = load i32, i32* %4, align 4
  ret i32 %190
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local signext i8 @cpu_to_le32(i64) #1

declare dso_local i32 @put_entry(i8*, i32, i32, i8*) #1

declare dso_local i32 @hashtab_map(%struct.TYPE_4__*, i32, i8*) #1

declare dso_local i32 @write_cons_helper(%struct.policydb*, %struct.constraint_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
