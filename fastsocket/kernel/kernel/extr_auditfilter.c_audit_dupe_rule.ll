; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditfilter.c_audit_dupe_rule.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditfilter.c_audit_dupe_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_entry = type { %struct.audit_krule }
%struct.audit_krule = type { i32, i8*, %struct.audit_watch*, %struct.TYPE_5__*, i32, i32, i32, i32, i32*, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.audit_watch = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AUDIT_BITMASK_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.audit_entry* @audit_dupe_rule(%struct.audit_krule* %0, %struct.audit_watch* %1) #0 {
  %3 = alloca %struct.audit_entry*, align 8
  %4 = alloca %struct.audit_krule*, align 8
  %5 = alloca %struct.audit_watch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.audit_entry*, align 8
  %8 = alloca %struct.audit_krule*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.audit_krule* %0, %struct.audit_krule** %4, align 8
  store %struct.audit_watch* %1, %struct.audit_watch** %5, align 8
  %12 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %13 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.audit_entry* @audit_init_entry(i32 %15)
  store %struct.audit_entry* %16, %struct.audit_entry** %7, align 8
  %17 = load %struct.audit_entry*, %struct.audit_entry** %7, align 8
  %18 = icmp ne %struct.audit_entry* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.audit_entry* @ERR_PTR(i32 %25)
  store %struct.audit_entry* %26, %struct.audit_entry** %3, align 8
  br label %180

27:                                               ; preds = %2
  %28 = load %struct.audit_entry*, %struct.audit_entry** %7, align 8
  %29 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %28, i32 0, i32 0
  store %struct.audit_krule* %29, %struct.audit_krule** %8, align 8
  %30 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %31 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %30, i32 0, i32 12
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.audit_krule*, %struct.audit_krule** %8, align 8
  %34 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %33, i32 0, i32 12
  store i32 %32, i32* %34, align 4
  %35 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %36 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %35, i32 0, i32 11
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.audit_krule*, %struct.audit_krule** %8, align 8
  %39 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %38, i32 0, i32 11
  store i32 %37, i32* %39, align 8
  %40 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %41 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %40, i32 0, i32 10
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.audit_krule*, %struct.audit_krule** %8, align 8
  %44 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %43, i32 0, i32 10
  store i32 %42, i32* %44, align 4
  %45 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %46 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %45, i32 0, i32 9
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.audit_krule*, %struct.audit_krule** %8, align 8
  %49 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %48, i32 0, i32 9
  store i32 %47, i32* %49, align 8
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %68, %27
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @AUDIT_BITMASK_SIZE, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %50
  %55 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %56 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %55, i32 0, i32 8
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.audit_krule*, %struct.audit_krule** %8, align 8
  %63 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %62, i32 0, i32 8
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %61, i32* %67, align 4
  br label %68

68:                                               ; preds = %54
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %50

71:                                               ; preds = %50
  %72 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %73 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.audit_krule*, %struct.audit_krule** %8, align 8
  %76 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %75, i32 0, i32 7
  store i32 %74, i32* %76, align 4
  %77 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %78 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.audit_krule*, %struct.audit_krule** %8, align 8
  %81 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %80, i32 0, i32 6
  store i32 %79, i32* %81, align 8
  %82 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %83 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.audit_krule*, %struct.audit_krule** %8, align 8
  %86 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 4
  %87 = load %struct.audit_krule*, %struct.audit_krule** %8, align 8
  %88 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %87, i32 0, i32 2
  store %struct.audit_watch* null, %struct.audit_watch** %88, align 8
  %89 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %90 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.audit_krule*, %struct.audit_krule** %8, align 8
  %93 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %95 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.audit_krule*, %struct.audit_krule** %8, align 8
  %98 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  %99 = load %struct.audit_krule*, %struct.audit_krule** %8, align 8
  %100 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %99, i32 0, i32 3
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %103 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %102, i32 0, i32 3
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = mul i64 4, %106
  %108 = trunc i64 %107 to i32
  %109 = call i32 @memcpy(%struct.TYPE_5__* %101, %struct.TYPE_5__* %104, i32 %108)
  store i32 0, i32* %10, align 4
  br label %110

110:                                              ; preds = %166, %71
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %169

114:                                              ; preds = %110
  %115 = load %struct.audit_krule*, %struct.audit_krule** %8, align 8
  %116 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %115, i32 0, i32 3
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  switch i32 %122, label %157 [
    i32 128, label %123
    i32 131, label %123
    i32 129, label %123
    i32 130, label %123
    i32 132, label %123
    i32 133, label %123
    i32 135, label %123
    i32 134, label %123
    i32 136, label %123
    i32 137, label %123
    i32 138, label %137
  ]

123:                                              ; preds = %114, %114, %114, %114, %114, %114, %114, %114, %114, %114
  %124 = load %struct.audit_krule*, %struct.audit_krule** %8, align 8
  %125 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %124, i32 0, i32 3
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i64 %128
  %130 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %131 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %130, i32 0, i32 3
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i64 %134
  %136 = call i32 @audit_dupe_lsm_field(%struct.TYPE_5__* %129, %struct.TYPE_5__* %135)
  store i32 %136, i32* %11, align 4
  br label %157

137:                                              ; preds = %114
  %138 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %139 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = load i32, i32* @GFP_KERNEL, align 4
  %142 = call i8* @kstrdup(i8* %140, i32 %141)
  store i8* %142, i8** %9, align 8
  %143 = load i8*, i8** %9, align 8
  %144 = icmp ne i8* %143, null
  %145 = xor i1 %144, true
  %146 = zext i1 %145 to i32
  %147 = call i64 @unlikely(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %137
  %150 = load i32, i32* @ENOMEM, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %11, align 4
  br label %156

152:                                              ; preds = %137
  %153 = load i8*, i8** %9, align 8
  %154 = load %struct.audit_krule*, %struct.audit_krule** %8, align 8
  %155 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %154, i32 0, i32 1
  store i8* %153, i8** %155, align 8
  br label %156

156:                                              ; preds = %152, %149
  br label %157

157:                                              ; preds = %156, %114, %123
  %158 = load i32, i32* %11, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %157
  %161 = load %struct.audit_entry*, %struct.audit_entry** %7, align 8
  %162 = call i32 @audit_free_rule(%struct.audit_entry* %161)
  %163 = load i32, i32* %11, align 4
  %164 = call %struct.audit_entry* @ERR_PTR(i32 %163)
  store %struct.audit_entry* %164, %struct.audit_entry** %3, align 8
  br label %180

165:                                              ; preds = %157
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %10, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %10, align 4
  br label %110

169:                                              ; preds = %110
  %170 = load %struct.audit_watch*, %struct.audit_watch** %5, align 8
  %171 = icmp ne %struct.audit_watch* %170, null
  br i1 %171, label %172, label %178

172:                                              ; preds = %169
  %173 = load %struct.audit_watch*, %struct.audit_watch** %5, align 8
  %174 = call i32 @audit_get_watch(%struct.audit_watch* %173)
  %175 = load %struct.audit_watch*, %struct.audit_watch** %5, align 8
  %176 = load %struct.audit_krule*, %struct.audit_krule** %8, align 8
  %177 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %176, i32 0, i32 2
  store %struct.audit_watch* %175, %struct.audit_watch** %177, align 8
  br label %178

178:                                              ; preds = %172, %169
  %179 = load %struct.audit_entry*, %struct.audit_entry** %7, align 8
  store %struct.audit_entry* %179, %struct.audit_entry** %3, align 8
  br label %180

180:                                              ; preds = %178, %160, %23
  %181 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  ret %struct.audit_entry* %181
}

declare dso_local %struct.audit_entry* @audit_init_entry(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.audit_entry* @ERR_PTR(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_5__*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @audit_dupe_lsm_field(%struct.TYPE_5__*, %struct.TYPE_5__*) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @audit_free_rule(%struct.audit_entry*) #1

declare dso_local i32 @audit_get_watch(%struct.audit_watch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
