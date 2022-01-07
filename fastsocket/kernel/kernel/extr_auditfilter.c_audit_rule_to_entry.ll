; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditfilter.c_audit_rule_to_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditfilter.c_audit_rule_to_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, %struct.audit_field*, %struct.audit_field* }
%struct.TYPE_3__ = type { i64 }
%struct.audit_field = type { i64, i32, i32 }
%struct.audit_rule = type { i32, i32*, i32* }

@AUDIT_NEGATE = common dso_local global i32 0, align 4
@AUDIT_OPERATORS = common dso_local global i32 0, align 4
@Audit_not_equal = common dso_local global i64 0, align 8
@Audit_equal = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@Audit_bad = common dso_local global i64 0, align 8
@Audit_bitmask = common dso_local global i64 0, align 8
@Audit_bittest = common dso_local global i64 0, align 8
@S_IFMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.audit_entry* (%struct.audit_rule*)* @audit_rule_to_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.audit_entry* @audit_rule_to_entry(%struct.audit_rule* %0) #0 {
  %2 = alloca %struct.audit_entry*, align 8
  %3 = alloca %struct.audit_rule*, align 8
  %4 = alloca %struct.audit_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.audit_field*, align 8
  %8 = alloca i32, align 4
  store %struct.audit_rule* %0, %struct.audit_rule** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.audit_rule*, %struct.audit_rule** %3, align 8
  %10 = call %struct.audit_entry* @audit_to_entry_common(%struct.audit_rule* %9)
  store %struct.audit_entry* %10, %struct.audit_entry** %4, align 8
  %11 = load %struct.audit_entry*, %struct.audit_entry** %4, align 8
  %12 = call i64 @IS_ERR(%struct.audit_entry* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %192

15:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %169, %15
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.audit_rule*, %struct.audit_rule** %3, align 8
  %19 = getelementptr inbounds %struct.audit_rule, %struct.audit_rule* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %172

22:                                               ; preds = %16
  %23 = load %struct.audit_entry*, %struct.audit_entry** %4, align 8
  %24 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %26 = load %struct.audit_field*, %struct.audit_field** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %26, i64 %28
  store %struct.audit_field* %29, %struct.audit_field** %7, align 8
  %30 = load %struct.audit_rule*, %struct.audit_rule** %3, align 8
  %31 = getelementptr inbounds %struct.audit_rule, %struct.audit_rule* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @AUDIT_NEGATE, align 4
  %38 = load i32, i32* @AUDIT_OPERATORS, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @AUDIT_NEGATE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %22
  %46 = load i64, i64* @Audit_not_equal, align 8
  %47 = load %struct.audit_field*, %struct.audit_field** %7, align 8
  %48 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  br label %62

49:                                               ; preds = %22
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = load i64, i64* @Audit_equal, align 8
  %54 = load %struct.audit_field*, %struct.audit_field** %7, align 8
  %55 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %61

56:                                               ; preds = %49
  %57 = load i32, i32* %8, align 4
  %58 = call i64 @audit_to_op(i32 %57)
  %59 = load %struct.audit_field*, %struct.audit_field** %7, align 8
  %60 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %56, %52
  br label %62

62:                                               ; preds = %61, %45
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @AUDIT_OPERATORS, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 2, i32 1
  %69 = load %struct.audit_entry*, %struct.audit_entry** %4, align 8
  %70 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  %72 = load %struct.audit_rule*, %struct.audit_rule** %3, align 8
  %73 = getelementptr inbounds %struct.audit_rule, %struct.audit_rule* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @AUDIT_NEGATE, align 4
  %80 = load i32, i32* @AUDIT_OPERATORS, align 4
  %81 = or i32 %79, %80
  %82 = xor i32 %81, -1
  %83 = and i32 %78, %82
  %84 = load %struct.audit_field*, %struct.audit_field** %7, align 8
  %85 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  %86 = load %struct.audit_rule*, %struct.audit_rule** %3, align 8
  %87 = getelementptr inbounds %struct.audit_rule, %struct.audit_rule* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.audit_field*, %struct.audit_field** %7, align 8
  %94 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %5, align 4
  %97 = load %struct.audit_field*, %struct.audit_field** %7, align 8
  %98 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @Audit_bad, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %62
  br label %194

103:                                              ; preds = %62
  %104 = load %struct.audit_field*, %struct.audit_field** %7, align 8
  %105 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  switch i32 %106, label %107 [
    i32 133, label %108
    i32 128, label %108
    i32 144, label %108
    i32 129, label %108
    i32 140, label %108
    i32 139, label %108
    i32 145, label %108
    i32 131, label %108
    i32 141, label %108
    i32 137, label %108
    i32 134, label %108
    i32 136, label %108
    i32 132, label %108
    i32 147, label %108
    i32 146, label %108
    i32 143, label %108
    i32 130, label %108
    i32 151, label %122
    i32 150, label %122
    i32 149, label %122
    i32 148, label %122
    i32 152, label %123
    i32 135, label %141
    i32 142, label %149
    i32 138, label %159
  ]

107:                                              ; preds = %103
  br label %194

108:                                              ; preds = %103, %103, %103, %103, %103, %103, %103, %103, %103, %103, %103, %103, %103, %103, %103, %103, %103
  %109 = load %struct.audit_field*, %struct.audit_field** %7, align 8
  %110 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @Audit_bitmask, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %120, label %114

114:                                              ; preds = %108
  %115 = load %struct.audit_field*, %struct.audit_field** %7, align 8
  %116 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @Audit_bittest, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %114, %108
  br label %194

121:                                              ; preds = %114
  br label %168

122:                                              ; preds = %103, %103, %103, %103
  br label %168

123:                                              ; preds = %103
  %124 = load %struct.audit_field*, %struct.audit_field** %7, align 8
  %125 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @Audit_not_equal, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %123
  %130 = load %struct.audit_field*, %struct.audit_field** %7, align 8
  %131 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @Audit_equal, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  br label %194

136:                                              ; preds = %129, %123
  %137 = load %struct.audit_field*, %struct.audit_field** %7, align 8
  %138 = load %struct.audit_entry*, %struct.audit_entry** %4, align 8
  %139 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 2
  store %struct.audit_field* %137, %struct.audit_field** %140, align 8
  br label %168

141:                                              ; preds = %103
  %142 = load %struct.audit_field*, %struct.audit_field** %7, align 8
  %143 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = and i32 %144, -16
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  br label %194

148:                                              ; preds = %141
  br label %168

149:                                              ; preds = %103
  %150 = load %struct.audit_field*, %struct.audit_field** %7, align 8
  %151 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @S_IFMT, align 4
  %154 = xor i32 %153, -1
  %155 = and i32 %152, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %149
  br label %194

158:                                              ; preds = %149
  br label %168

159:                                              ; preds = %103
  %160 = load %struct.audit_entry*, %struct.audit_entry** %4, align 8
  %161 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %160, i32 0, i32 0
  %162 = load %struct.audit_field*, %struct.audit_field** %7, align 8
  %163 = call i32 @audit_to_inode(%struct.TYPE_4__* %161, %struct.audit_field* %162)
  store i32 %163, i32* %5, align 4
  %164 = load i32, i32* %5, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %159
  br label %194

167:                                              ; preds = %159
  br label %168

168:                                              ; preds = %167, %158, %148, %136, %122, %121
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %6, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %6, align 4
  br label %16

172:                                              ; preds = %16
  %173 = load %struct.audit_entry*, %struct.audit_entry** %4, align 8
  %174 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %175, align 8
  %177 = icmp ne %struct.TYPE_3__* %176, null
  br i1 %177, label %178, label %191

178:                                              ; preds = %172
  %179 = load %struct.audit_entry*, %struct.audit_entry** %4, align 8
  %180 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @Audit_not_equal, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %178
  %188 = load %struct.audit_entry*, %struct.audit_entry** %4, align 8
  %189 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %190, align 8
  br label %191

191:                                              ; preds = %187, %178, %172
  br label %192

192:                                              ; preds = %191, %14
  %193 = load %struct.audit_entry*, %struct.audit_entry** %4, align 8
  store %struct.audit_entry* %193, %struct.audit_entry** %2, align 8
  br label %199

194:                                              ; preds = %166, %157, %147, %135, %120, %107, %102
  %195 = load %struct.audit_entry*, %struct.audit_entry** %4, align 8
  %196 = call i32 @audit_free_rule(%struct.audit_entry* %195)
  %197 = load i32, i32* %5, align 4
  %198 = call %struct.audit_entry* @ERR_PTR(i32 %197)
  store %struct.audit_entry* %198, %struct.audit_entry** %2, align 8
  br label %199

199:                                              ; preds = %194, %192
  %200 = load %struct.audit_entry*, %struct.audit_entry** %2, align 8
  ret %struct.audit_entry* %200
}

declare dso_local %struct.audit_entry* @audit_to_entry_common(%struct.audit_rule*) #1

declare dso_local i64 @IS_ERR(%struct.audit_entry*) #1

declare dso_local i64 @audit_to_op(i32) #1

declare dso_local i32 @audit_to_inode(%struct.TYPE_4__*, %struct.audit_field*) #1

declare dso_local i32 @audit_free_rule(%struct.audit_entry*) #1

declare dso_local %struct.audit_entry* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
